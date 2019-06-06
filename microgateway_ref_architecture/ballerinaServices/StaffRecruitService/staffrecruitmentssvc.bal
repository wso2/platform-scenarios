import ballerina/http;
import ballerina/log;
import ballerina/io;
import ballerinax/docker;

@docker:Expose {}
listener http:Listener staffrecruitserviceDock = new(9095);

@docker:Config {
     name: "staffrecruitservice",
     tag: "v1.0"
}

service staffrecruitservice on staffrecruitserviceDock {

    @http:ResourceConfig {
        methods: ["POST"],
        path: "/processAdmission",
        consumes:["application/json"],
        produces:["application/json"]
    }
    resource function processAdmission(http:Caller caller, http:Request incomingrequest) returns error?{

     // incoming request pattern
     // {
     //  "employeeId":"A32500",
     //  "employeeName":"Jane Smith"
     //  }

     log:printInfo("This is staff recruit service! \n");

     json response = {"status": "success"};

     var result = caller -> respond(response);
        
    }
}