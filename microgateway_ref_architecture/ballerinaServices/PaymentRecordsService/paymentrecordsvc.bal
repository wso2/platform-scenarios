import ballerina/http;
import ballerina/log;
import ballerina/io;
import ballerinax/docker;
import ballerina/mime;


@docker:Expose {}
listener http:Listener paymentrecordserviceDock = new(9094);

@docker:Config {
     name: "paymentrecordservice",
     tag: "v1.0"
}


service paymentrecordservice on paymentrecordserviceDock {

    @http:ResourceConfig {
        methods: ["GET"],
        path: "/updatePaymentRecords",
        produces:["application/json"]
    }
    resource function updatePaymentRecords(http:Caller caller, http:Request incomingrequest) returns error?{

        http:Client jwtTokenHTTPEP = new ("https://wso2am260:8243", config = {
                
                secureSocket: {
                    trustStore: {
                        path: "${ballerina.home}/bre/security/ballerinaTruststore.p12",
                        password: "ballerina"
                    },
                    verifyHostname: false
                }
                
         });

        http:Client studentAdmSvcBallerinaEP = new("http://admissionservicemgw:9087/studentadmissionsvc/1.0.0");

        log:printInfo("Start update student payment record for semester! \n");

        http:Request admissionSvcAuthRequest = new;
        string clientInfo = "amyFh8NhUuFcZe7L0dmMH_pBe7Ya" + ":" + "c60TgFGrIv2V2ZqnCPut1t852c4a";
        string basicAuthTk = "Basic " + check mime:base64EncodeString(clientInfo);
        admissionSvcAuthRequest.setHeader("Content-Type", "application/x-www-form-urlencoded");
        admissionSvcAuthRequest.setHeader("Authorization", basicAuthTk);
        string msgrequest = "grant_type=client_credentials&scope=verify_admission";
        admissionSvcAuthRequest.setTextPayload(msgrequest,contentType = "application/x-www-form-urlencoded");

        
        var tokenResponse = jwtTokenHTTPEP -> post("/token", admissionSvcAuthRequest);
        json jwtToken = "";

        if (tokenResponse is http:Response) {
            json tokenPayload = check tokenResponse.getJsonPayload();
            jwtToken = tokenPayload.access_token;
        }  

        http:Request recordSvcRequest = new;
        recordSvcRequest.setHeader("Authorization", "Bearer " + check string.convert(jwtToken));

        map<string> queryParams = incomingrequest.getQueryParams();

        string studentId =  <string>queryParams["studentId"];

        var admissionSvcResponse = studentAdmSvcBallerinaEP ->  get("/verifyAdmission?studentId="+ untaint studentId, message=recordSvcRequest);

        if (admissionSvcResponse is http:Response) {
            var result = caller -> respond(admissionSvcResponse);
        } else {
            io:println("Error when calling student admission service backend: ", admissionSvcResponse);
            string message = "Error when calling student admission service backend ";
            var result = caller -> respond(message);
        }   


    }
}