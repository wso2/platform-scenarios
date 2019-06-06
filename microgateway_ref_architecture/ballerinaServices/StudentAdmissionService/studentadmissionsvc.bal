import ballerina/http;
import ballerina/log;
import ballerina/io;
import ballerinax/docker;
import ballerina/mime;
import ballerina/system;

@docker:Expose {}
listener http:Listener studentadmissionserviceDock = new(9102);

@docker:Config {
     name: "studentadmissionservice",
     tag: "v1.0"
}

service studentadmissionservice on studentadmissionserviceDock {

    map<string> studentAdmissions = {};
         
    @http:ResourceConfig {
        methods: ["POST"],
        path: "/processAdmission",
        consumes:["application/json"],
        produces:["application/json"]
    }
    
    resource function processAdmission(http:Caller caller, http:Request incomingrequest) returns error?{

            http:Client jwtTokenHTTPEP = new ("https://wso2am260:8243", config = {
                
                secureSocket: {
                    trustStore: {
                        path: "${ballerina.home}/bre/security/ballerinaTruststore.p12",
                        password: "ballerina"
                    },
                    verifyHostname: false
                }
                
         });

        http:Client registerSvcBallerinaEP = new("http://registerstudentsvcmgw:9089/registerstudentsvc/1.0.0");
        
        // incoming request pattern
        // {
        //    "studentId":"UG34564D",
        //    "courseIds":["CS202","CS203"]
        // }

        log:printInfo("Start processing student admission for semester! \n");
        
        json registerSvcPayload = check incomingrequest.getJsonPayload();
        json studentId = registerSvcPayload.studentId;


        http:Request registerSvcAuthRequest = new;
        string clientInfo = "GOiyZRrwgElZDUSlveU7WJ_uVx8a" + ":" + "kDqRaSkR6GgyB3TOSLHrLSuOVZga";
        string basicAuthTk = "Basic " + check mime:base64EncodeString(clientInfo);
        registerSvcAuthRequest.setHeader("Content-Type", "application/x-www-form-urlencoded");
        registerSvcAuthRequest.setHeader("Authorization", basicAuthTk);
        string msgrequest = "grant_type=client_credentials&scope=register_course";
        registerSvcAuthRequest.setTextPayload(msgrequest,contentType = "application/x-www-form-urlencoded");

        
        var tokenResponse = jwtTokenHTTPEP -> post("/token", registerSvcAuthRequest);
        json jwtToken = "";

        if (tokenResponse is http:Response) {
            json tokenPayload = check tokenResponse.getJsonPayload();
            jwtToken = tokenPayload.access_token;
        }  

        log:printInfo("Start calling regsiter student service backend \n");

        http:Request registerSvcRequest = new;
        registerSvcRequest.setJsonPayload(untaint registerSvcPayload, contentType = "application/json");
        registerSvcRequest.setHeader("Authorization", "Bearer " + check string.convert(jwtToken));


        var registerSvcResponse = registerSvcBallerinaEP -> post("/registerForCourse", registerSvcRequest);

        if (registerSvcResponse is http:Response) {
            json response = check registerSvcResponse.getJsonPayload();
            if(!response.toString().contains("Error")){
                json registeredCourses = response.registeredCourses;
                json admissionResponse = {"admissionStatus": "success", "studentId": studentId,"registeredCourses": registeredCourses};
                studentadmissionservice.studentAdmissions[<string>studentId]= "success";
                var result = caller -> respond(untaint admissionResponse);
            } else {
                io:println("Error when calling regsiter student service backend: ", registerSvcResponse);
                json message = response.registeredCourses;
                json admissionResponse = {"admissionStatus": "failure", "studentId": studentId,"message": message};
                studentadmissionservice.studentAdmissions[<string>studentId]= "failure";
                var result = caller -> respond(untaint admissionResponse);
                }
            
        } else {
            io:println("Error when calling regsiter student service backend: ", registerSvcResponse.reason());
            string message = "Error when calling regsiter student service backend: " + registerSvcResponse.reason();
            json admissionResponse = {"admissionStatus": "failure", "studentId": studentId,"message": message};
            studentadmissionservice.studentAdmissions[<string>studentId]= "failure";
            var result = caller -> respond(untaint admissionResponse);
        }

        
    }

     @http:ResourceConfig {
        methods: ["GET"],
        path: "/verifyAdmission",
        produces:["application/json"]
    }
    resource function verifyAdmission(http:Caller caller, http:Request incomingrequest) returns error?{

        log:printInfo("Start verifying student admission for semester! \n");
        
        map<string> queryParams = incomingrequest.getQueryParams();
        string studentId =  <string>queryParams["studentId"];
        if (studentadmissionservice.studentAdmissions.hasKey(studentId)) {
            string admissionStatus = <string>studentadmissionservice.studentAdmissions[<string>studentId];
            json verifyAdmResponse = {"studentId":studentId,"admissionStatus": admissionStatus};
            var result = caller -> respond(untaint verifyAdmResponse);
        } else {
            string message = "Error - Student id not found in admission database";
            json verifyAdmResponse = {"studentId":studentId,"admissionStatus": message};
            var result = caller -> respond(untaint verifyAdmResponse);
        }
        
    } 
 

}

