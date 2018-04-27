import ballerina.net.http;
import ballerina.lang.messages;
import ballerina.lang.jsons;
import ballerina.lang.system;


@http:configuration {basePath:"/"}
service<http> loanApplicationsService {

    string loansServiceUrl = system:getEnv("LOANS_SERVICE_URL");
    string customersServiceUrl = system:getEnv("CUSTOMERS_SERVICE_URL");
    string creditsServiceUrl = system:getEnv("CREDITS_SERVICE_URL");

    @http:resourceConfig {
        methods:["POST"],
        path:"/"
    }
    resource createResource (message m) {

        json jsonMsg = messages:getJsonPayload(m);
        system:println("HTTP POST / resource invoked:\n" + jsons:toString(jsonMsg));

        http:ClientConnector customerserviceEP = create http:ClientConnector (customersServiceUrl);
        http:ClientConnector creditServiceEP = create http:ClientConnector (creditsServiceUrl);
        http:ClientConnector loanserviceEP = create http:ClientConnector (loansServiceUrl);

        string customerId;
        float income;
        float percentage = 40;
        float loanAmount;
        float availableCreditAmount;
        float totalAvailableAmount;
        float totalCreditAmount;

        customerId, _ = (string)jsonMsg["customerId"];
        income, _ = (float)jsonMsg["income"];
        loanAmount, _ = (float)jsonMsg["amount"];

        // Validate customer
        message response = {};
        system:println("Find customer: HTTP GET " + customersServiceUrl + "/" + customerId);
        response = customerserviceEP.get("/" + customerId, m);
        int statusCode = http:getStatusCode(response);
        if(statusCode != 200){
            system:println("Could not find a customer with id " + customerId + ", HTTP status code: " + statusCode);
            reply response;
        }
        system:println("Customer response: " + jsons:toString(messages:getJsonPayload(response)));

        // Validate loan amount eligibility
        system:println("Find credits of customer: HTTP GET " + creditsServiceUrl + "/" + customerId);
        response = creditServiceEP.get("/" + customerId, m);
        statusCode = http:getStatusCode(response);
        if(statusCode != 200){
            system:println("Error occurred while checking credit balance, HTTP status code: " + statusCode);
            reply response;
        }
        json jsonResponse = messages:getJsonPayload(response);
        system:println("Customer credit response: " + jsons:toString(jsonResponse));
        totalCreditAmount, _ = (float)jsonResponse.totalCreditAmount;
        totalAvailableAmount = (income * percentage)/100;
        availableCreditAmount = totalAvailableAmount - totalCreditAmount;

        system:println("Total available credit amount: " + totalAvailableAmount);
        system:println("Total credit amount: " + totalCreditAmount);
        system:println("Available credit amount: " + availableCreditAmount);

        if(loanAmount > availableCreditAmount) {
            json error = { "error": "Loan amount is greater than available credit amount " + availableCreditAmount};
            system:println(jsons:toString(error));

            messages:setJsonPayload(response, error);
            http:setStatusCode(response, 403);
            reply response;
        }

        // Create loan application
        system:println("Create loan application: HTTP POST " + loansServiceUrl + "/\n" + jsons:toString(jsonMsg));
        response = loanserviceEP.post("/", m);
        jsonResponse = messages:getJsonPayload(response);
        system:println("Loan application created successfully: \n" + jsons:toString(jsonResponse));

        // Create customer credit
        string referenceNumber;
        referenceNumber, _ = (string)jsonResponse.referenceNumber;
        json customerCredit;
        customerCredit = { "customerId": customerId, "referenceNumber": referenceNumber, "amount": loanAmount};
        message customerCreditMessage = {};
        messages:setJsonPayload(customerCreditMessage, customerCredit);
        string authHeader = messages:getHeader(m, "X-JWT-Assertion");
        messages:setHeader(customerCreditMessage, "X-JWT-Assertion", authHeader);

        system:println("Create customer credit: HTTP POST " + creditsServiceUrl + "/\n" + jsons:toString(customerCredit));
        message customerCreditResponse = creditServiceEP.post("/", customerCreditMessage);
        statusCode = http:getStatusCode(customerCreditResponse);
        if(statusCode != 200){
            system:println("Error occurred while creating customer credit, HTTP status code: " + statusCode);
            reply response;
        }

        reply response;
    }

    @http:resourceConfig {
        methods:["GET"],
        path:"/"
    }
    resource getAllResource (message m) {

        system:println("HTTP GET / resource invoked");
        http:ClientConnector loanserviceEP = create http:ClientConnector (loansServiceUrl);
        message response = {};
        system:println("Invoking HTTP GET " + loansServiceUrl + "/");
        response = loanserviceEP.get("/", m);
        reply response;
    }

    @http:resourceConfig {
        methods:["GET"],
        path:"/status/{referenceNumber}"
    }
    resource statusResource (message m, @http:PathParam {value:"referenceNumber"} string referenceNumber) {

        system:println("HTTP GET /status/{referenceNumber} resource invoked: [referenceNumber] " + referenceNumber);
        http:ClientConnector loanserviceEP = create http:ClientConnector (loansServiceUrl);
        message response = {};
        system:println("Invoking HTTP GET " + loansServiceUrl + "/status/" + referenceNumber);
        response = loanserviceEP.get("/status/" + referenceNumber, m);
        reply response;
    }

    @http:resourceConfig {
        methods:["POST"],
        path:"/approve/{referenceNumber}"
    }
    resource approveResource (message m, @http:PathParam {value:"referenceNumber"} string referenceNumber) {

        system:println("HTTP POST /approve/{referenceNumber} resource invoked: [referenceNumber] " + referenceNumber);
        http:ClientConnector loanserviceEP = create http:ClientConnector (loansServiceUrl);

        message response = {};
        system:println("Invoking HTTP POST " + loansServiceUrl + "/approve/" + referenceNumber);
        response = loanserviceEP.post("/approve/" + referenceNumber, m);
        reply response;
    }

    @http:resourceConfig {
        methods:["POST"],
        path:"/reject/{referenceNumber}"
    }
    resource rejectResource (message m, @http:PathParam {value:"referenceNumber"} string referenceNumber) {

        system:println("HTTP POST /reject/{referenceNumber} resource invoked: [referenceNumber] " + referenceNumber);
        http:ClientConnector loanserviceEP = create http:ClientConnector (loansServiceUrl);

        message response = {};
        system:println("Invoking HTTP POST " + loansServiceUrl + "/reject/" + referenceNumber);
        response = loanserviceEP.post("/reject/" + referenceNumber, m);
        reply response;
    }
}

