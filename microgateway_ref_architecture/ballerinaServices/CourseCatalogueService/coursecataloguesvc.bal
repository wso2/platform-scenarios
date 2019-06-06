import ballerina/http;
import ballerina/log;
import ballerina/io;
import ballerinax/docker;

@docker:Expose {}
listener http:Listener coursecatalogueserviceDock = new(9093);

@docker:Config {
    name: "coursecatalogueservice",
    tag: "v1.0"
}
service coursecatalogueservice on coursecatalogueserviceDock {

    @http:ResourceConfig {
        methods: ["POST"],
        path: "/searchCourses",
        consumes:["application/json"],
        produces:["application/json"]
    }
    resource function searchCourses(http:Caller caller, http:Request incomingrequest) returns error?{

     // incoming request pattern, {"courseIds":["CS202","CS203"]}

     map<any> coursesCatalogue = { "CS201": "Computer Networks", "CS202": "Functional Programming", "CS203": "Artifical Intelligence", "CS204": "Data Mining" };
     json studentCourses = [];

     log:printInfo("This is course catalogue service! \n");

     json payload = check incomingrequest.getJsonPayload();
     json[] courseIds = <json[]> payload.courseIds;

     int counter = 0;   
     foreach var id in courseIds {
         if (coursesCatalogue.hasKey(<string>id)) {
            string courseName = <string>coursesCatalogue[<string>id];
            studentCourses[counter] = courseName;
         } else {
            string message = "Error - Course not found " + <string>id;
            studentCourses[counter] = message;   
         }   
         counter = counter+1;
     }

     io:println("Catalogue returned courses " + studentCourses.toString());
     var result = caller -> respond(untaint studentCourses);
        
    }

}