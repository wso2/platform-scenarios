A decentralized reference architecture for APIs with WSO2 API Microgateway

This docker setup demonstrates a reference architecture to decentralize an organization's API Management platform using WSO2 Microgateway. 


The reference implementation is based on a University, operating with departments for Registrar, Catalogues, Bursar and Admissions where each department own several APIs. The university has four departments which is involved in Admissions process. Each department; Admissions Department, Registration Department, Course Information Department and Bursar Department has it's own microgateway build with APIs owned by their department. All these APIs are published to Enterprise API Manager (all-in-one node), and then APIs owned by different departments are built as microgateways. For e.g. Registration API is used to build Registrar dept. microgateway and both StaffAdmission, StudentAdmission APIs are built under Admissions dept. migrogateway. The API resources are secured with assigning scopes and roles to each resource. The microgateways are able to communicate among them with JWT token calls. Also, as all APIs are published into enterprise gateway, an external user is able to call the APIs with OAuth tokens too. Hence instead of managing all university APIs in single enterprise gateway the gateway traffic will be decentralized to individual microgateways belong to each department. In this manner departments are able to run their APIs in an isolated environment for better performance. The authentication is done using JWT self signed tokens to avoid frequent calls to the Key Manager. For an organization with a central enterprise API gateway, if one API is taking more traffic than rest of the APIs then other APIs will be deprived of system resources due to that which can make higher latencies in the entire system. As department wise APIs are run in separate microgateways, there will be no resource overuse by certain API ahead of others. All gateways (enterprise and microgw) publish events data to a single Analytics server. 


The backend services used are ballerina based micro services. For each department, the microgateway and backend services owned by them are deployed as docker containers. In addition to that API Manager 2.6.0 and Analytics servers are deployed in separate docker containers. All servers are linked as a named docker network and you can start whole deployment with one docker-compose script.

Use Case

1. When a student needs to be registered for certain courses for the upcoming semester, an authenticated user from admissions department calls StudentAdmission API using OAuth (process_admission scope) with passing StudentId and CourseIds. The student admissions backend service then generates a JWT token (register_student scope) and call Registrar Dept microgateway to register the student for the semester. For complete the registration, when request comes to Registar Dept microgw, student register service backend calls Catalogue Dept microgw with a new JWT token (search_course scope) to find relevant courses for the passed student ids.  Courser catalogue service then returns course names to the Registration Dept and this is returned to the Admissions Department by them. Once the course names are available Admissions Dept. completes the student admission for the semester.

2. Bursar department wants to send payment reminders to all the students registered for courses in the upcoming semester. An authenticated user from the bursar department calls the StudentAdmission API using JWT token (verify_admission scope) and passing the student id. Student admission service checks the student id and, if admission is completed for the student, it returns admission status to bursar department user. After admission is confirmed, Bursar Dept. sends payment reminders to students.

Versions

WSO2 API Manager 2.6.0
WSO2 APIM Analytics Server 2.6.0
JDK 1.8.0_191
Ballerina (https://ballerina.io/)
Docker Desktop

How to Run

Checkout the repo and go to /platform-scenarios/microgateway_ref_architecture directory.

Install docker into your setup environment and start docker.

Run the docker-compose.yml file using the command below.
$  docker-compose up  --build

This will build required docker images and start all the server, backend services and microgateways in one command. After that proceed to send requests to APIs.


How to test

The client applications for each department's microgateway are already registered. Generate JWT/OAuth tokens by logging into Enterprise API store (https://localhost:9443/store/) or directly calling Token endpoint to call the APIs.

Use the postman collection in the /microgateway_ref_architecture directory to get sample requests for each function in each department and call these APIs through postman.


