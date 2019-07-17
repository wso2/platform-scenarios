import ballerina/http;
import ballerina/log;
import ballerina/io;
import ballerinax/docker;
import ballerina/config;
import ballerina/mime;

@docker:Expose {}
listener http:Listener registerstudentserviceDock = new(9092);

@docker:Config {
    name: "registerstudentservice",
    tag: "v1.0"
}


service registerstudentservice on registerstudentserviceDock {


    @http:ResourceConfig {
        methods: ["POST"],
        path: "/registerForCourse",
        consumes:["application/json"],
        produces:["application/json"]
    }
    resource function registerForCourse(http:Caller caller, http:Request incomingrequest) returns error?{
        
        http:Client jwtTokenHTTPEP = new ("https://wso2am260:8243", config = {
                
                secureSocket: {
                    trustStore: {
                        path: "${ballerina.home}/bre/security/ballerinaTruststore.p12",
                        password: "ballerina"
                    },
                    verifyHostname: false
                }
                
         });
        http:Client courseCatalogueSvcBallerinaEP = new("http://coursecataloguesvcmgw:9090/coursecataloguesvc/1.0.0");


        // incoming request pattern
        // {
        //    "studentId":"UG34564D",
        //    "courseIds":["CS202","CS203"]
        // }

        log:printInfo("Register student for courses for semester! \n");

        http:Request httpRequest = new;
        string clientInfo = "9fGrxz0yGt88e6FXfH2Lf39xyIwa" + ":" + "enmxvcz0o8WV_ifkIFYrvCpKgSEa";
        string basicAuthTk = "Basic " + check mime:base64EncodeString(clientInfo);
        httpRequest.setHeader("Content-Type", "application/x-www-form-urlencoded");
        httpRequest.setHeader("Authorization", basicAuthTk);

        string msgrequest = "grant_type=client_credentials&scope=search_course";
        httpRequest.setTextPayload(msgrequest,contentType = "application/x-www-form-urlencoded");

        json jwtToken = "";
        var tokenResponse = jwtTokenHTTPEP -> post("/token", httpRequest);
        if (tokenResponse is http:Response) {
            json tokenPayload = check tokenResponse.getJsonPayload();
            jwtToken = tokenPayload.access_token;
        }

        json payload = check incomingrequest.getJsonPayload();
        json courseIds =  payload.courseIds;
        json studentId = payload.studentId;
        json catalogueSvcPayload = {"courseIds": courseIds};
        http:Request catalogueSvcRequest = new;
        catalogueSvcRequest.setJsonPayload(untaint catalogueSvcPayload, contentType = "application/json");
        catalogueSvcRequest.setHeader("Authorization", "Bearer " + check string.convert(jwtToken));

        log:printInfo("Start calling course catalogue service backend \n");

        var courseCatalogueSvcResponse = courseCatalogueSvcBallerinaEP -> post("/searchCourses", catalogueSvcRequest);
        if (courseCatalogueSvcResponse is http:Response) {
            json courseResponse = {"studentId":studentId,"registeredCourses": check courseCatalogueSvcResponse.getJsonPayload()};
            var result = caller -> respond(untaint courseResponse);
        } else {
            io:println("Error when calling catalogue service backend: ", courseCatalogueSvcResponse);
            string message = "Error when calling catalogue service backend: " + courseCatalogueSvcResponse.reason();
            var result = caller -> respond(message);
        }
       
    }

    
}











