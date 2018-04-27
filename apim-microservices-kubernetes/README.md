# WSO2 Microservices POC

This repository contains a POC implemented with [WSO2 Microservices Framework for Java (MSF4J)](http://wso2.com/products/microservices-framework-for-java/), 
[Ballerinalang](https://ballerinalang.org) and [WSO2 API Manager](https://wso2.com/api-management/) on demonstrating 
how an enterprise solution can be developed according to [Microservices](https://martinfowler.com/articles/microservices.html) Architecture.

## Solution Architecture

The following diagram illustrates the solution architecture of this POC:
![](images/solution-architecture.png)

## Features

- Implementing microservices in WSO2 MSF4J microservices framework.
- The process of building Docker images for microservices.
- Securing microservices with JWT.
- Implementing integration services with [Ballerinalang](https://ballerinalang.org).
- The process of building Docker images for integration services.
- Wiring database connections, integrations between microservices and integration services.
- Exposing microservices and integration services via WSO2 API Manager.
- Deploying microservices, integration services, WSO2 Enterprise Integrator/Business Proces Server WSO2 API Manager on OpenShift.
- Enabling API subscription workflow with WSO2 Enterprise Integrator/Business Process Server.
- Migrating APIs between API manager environments using [API-M CLI](https://github.com/imesh/wso2-apim-cli).

## Prerequisites

- [Minishift](https://docs.openshift.org/latest/minishift) v1.6+ or an OpenShift v3.6.0+ environment
- If using Minishift:
  - An OSX or a Linux computer with 16GB of memory and 40GB of free disk space
  - VirtualBox v5.1+
- [OpenShift CLI](https://docs.openshift.org/latest/cli_reference/get_started_cli.html#installing-the-cli) v3.6.0+
- Following Docker images:
  ````
  imesh/wso2-microservices-poc-customers-service:0.3
  imesh/wso2-microservices-poc-credits-service:0.3
  imesh/wso2-microservices-poc-loans-service:0.3
  imesh/wso2-microservices-poc-loan-applications-service:0.3
  imesh/wso2-microservices-poc-wso2apim:2.1.0-v2
  imesh/wso2-microservices-poc-wso2apim-analytics:2.1.0-v2
  imesh/wso2-microservices-poc-wso2ei-bps:6.1.1-v2
  centos/mysql-57-centos7
  ````

## Getting Started

1. Clone this repository, switch to the latest tag and change the directory to apim-microservices-kubernetes. Refer this folder as [apim-microservices-kubernetes]:

   ````bash
   git clone https://github.com/wso2/platform-scenarios.git
   cd platform-scenarios/apim-microservices-kubernetes/
   ````
   
2. Install [Minishift](https://docs.openshift.org/latest/minishift/getting-started/index.html) or use an existing 
OpenShift cluster.

3. If you are using Minishift start it using the below command:
   
   ````bash
   minishift start --vm-driver virtualbox --cpus=4 --memory=8GB --disk-size=40GB
   ````

4. Login to OpenShift cluster using [OpenShift CLI](https://docs.openshift.org/latest/cli_reference/get_started_cli.html#installing-the-cli):

   ````bash
   oc login -u system:admin
   ````

5. If you are using Minishift execute the below command to configure your Docker CLI to point to the Minishift Docker 
daemon. This will allow the required Docker images to be pulled to the Minishift host directly:

   ````bash
   eval $(minishift docker-env)
   ````

6. Pull the below Docker images into the OpenShift environment:

   ````bash
   docker pull imesh/wso2-microservices-poc-customers-service:0.3
   docker pull imesh/wso2-microservices-poc-credits-service:0.3
   docker pull imesh/wso2-microservices-poc-loans-service:0.3
   docker pull imesh/wso2-microservices-poc-loan-applications-service:0.3
   docker pull imesh/wso2-microservices-poc-wso2apim:2.1.0-v2
   docker pull imesh/wso2-microservices-poc-wso2apim-analytics:2.1.0-v2
   docker pull imesh/wso2-microservices-poc-wso2ei-bps:6.1.1-v2
   docker pull centos/mysql-57-centos7
   ````
   
7. Create an user in OpenShift called admin and assign the cluster-admin role. This user will be used to deploy OpenShift resources:

    ````bash
    oc create user admin --full-name=admin
    oc adm policy add-cluster-role-to-user cluster-admin admin
    ````

8. Create a new project called wso2:

    ````bash
    oc new-project wso2 --description="WSO2" --display-name="wso2"
    ````
   
9. Create a service account called wso2svcacct in wso2 project and assign anyuid security context constraint:

    ````bash
    oc create serviceaccount wso2svcacct
    oc adm policy add-scc-to-user anyuid -z wso2svcacct -n wso2
    ````

10. Deploy the MySQL server, microservices, WSO2 Enterprise Integrator/Business Process Server, and WSO2 API Manager 
using the ```deploy.sh``` script found in the root folder:

    ````bash
    ./deploy.sh
    ````

11. Add following /etc/hosts entries pointing to a OpenShift node IP address. For an example if OpenShift node IP is 
```192.168.99.101```:

    ````bash
    192.168.99.101 wso2apim
    192.168.99.101 wso2apim-analytics
    192.168.99.101 wso2apim-gw
    ````

    The ```minishift ip``` command to can be used for finding the IP address of Minishift VM.

12. Download and build [WSO2 API Manager CLI](https://github.com/imesh/wso2-apim-cli) using Golang, refer this folder
as [wso2-apim-cli]:

    ````bash
    git clone https://github.com/imesh/wso2-apim-cli
    cd wso2-apim-cli
    go get github.com/urfave/cli
    go build .
    ````

13. Expose following environment variables:

    ````bash
    export DST_WSO2_APIM_ENDPOINT=https://wso2apim
    export DST_WSO2_APIM_GATEWAY_ENDPOINT=https://wso2apim-gw
    export DST_WSO2_APIM_USERNAME=admin
    export DST_WSO2_APIM_PASSWORD=admin
    ````

14. Copy ```CustomersAPI-v1.0.zip``` and ```LoanApplicationsAPI-v1.0.zip``` zip files found in 
```[apim-microservices-kubernetes]\apis\``` folder to the ```[wso2-apim-cli]\export\``` folder and execute the following 
command to import those to the WSO2 API Manager:

    ````bash
    cp [apim-microservices-kubernetes]/apis/*.zip [wso2-apim-cli]/export/
    cd [wso2-apim-cli]
    ./wso2-apim-cli import
    ````

    ````bash
    API CustomersAPI-v1.0.zip imported successfully
    API LoanApplicationsAPI-v1.0.zip imported successfully
    Client id and client secret obtained
    Access token generated: 3a5b71d6-98ea-3fef-82df-6ce5c6f20df9
    API CustomersAPI-v1.0 published successfully
    API LoanApplicationsAPI-v1.0 published successfully
    ````

15. Download and install [Postman](https://www.getpostman.com/) API client application.

16. Import the Postman project and the oauth environment found in the ```[apim-microservices-kubernetes]/postman/``` folder 
into Postman.

17. Log into API Store using the URL [https://wso2apim/store](https://wso2apim/store) and default credentials 
admin/admin.

18. Subscribe to both Customers API and Loan Applications API.

19. Navigate to "Applications" -> "Default Application" -> "Production Keys" and press the "Generate keys" button.

20. Copy the "Access Token" generated above to the clipboard and paste it to the auth-header environment variable in 
the OAuth environment in Postman.

21. Invoke the "Create Customer" request via Postman to create a new customer.

22. Copy the generated "Customer ID" from the above response, add it to the body of the "Create Loan Application" 
request and invoke it to create a new loan application.

23. Now login to the OpenShift console and view the Loan Applications container log:

    ````bash
    HTTP GET /status/{referenceNumber} resource invoked: [referenceNumber] PERSONAL2017000002
    Invoking HTTP GET http://loans:8080/status/PERSONAL2017000002
    HTTP GET / resource invoked
    Invoking HTTP GET http://loans:8080/
    HTTP POST / resource invoked:
    {"type":"Personal","customerId":"1","amount":40000.0,"income":200000.0,"period":12}
    Find customer: HTTP GET http://customers:8080/1
    Customer response: {"id":1,"fname":"Shane","lname":"Smith","address":"First Street","state":"NY","postalCode":"12345","country":"United States"}
    Find credits of customer: HTTP GET http://credits:8080/1
    Customer credit response: {"totalCreditAmount":0.0}
    Total available credit amount: 80000.0
    Total credit amount: 0.0
    Available credit amount: 80000.0
    Create loan application: HTTP POST http://loans:8080/
    {"type":"Personal","customerId":"1","amount":40000.0,"income":200000.0,"period":12}
    Loan application created successfully: 
    {"referenceNumber":"PERSONAL2017000001"}
    Create customer credit: HTTP POST http://credits:8080/
    {"customerId":"1","referenceNumber":"PERSONAL2017000001","amount":40000.0}
    ````

## Enabling API Subscription Approval Workflow

The API subscription approval process can be used for intercepting API subscription requests and let an administrative 
user review them without allowing users to directly subscribe to APIs. Follow below steps to configure it:

1. Log into API Manager management console using the URL [https://wso2apim/carbon](https://wso2apim/carbon).

2. Navigate to the Registry Browser from the left menu, Resources -> Browse.

3. Search for the below file using the Location search field:

   ````
   /_system/governance/apimgt/applicationdata/workflow-extensions.xml
   ````

4. Replace the contents of the above file with the content provided in 
[workflow-extensions.xml](/kubernetes-apim/extensions/workflow-extensions.xml) file. This would update the following 
configuration and enable API subscription workflow:

   ````xml
   <!-- SubscriptionCreation executor="org.wso2.carbon.apimgt.impl.workflow.SubscriptionCreationSimpleWorkflowExecutor"/ -->
   <SubscriptionCreation executor="org.wso2.carbon.apimgt.impl.workflow.SubscriptionCreationWSWorkflowExecutor">
      <Property name="serviceEndpoint">http://wso2ei-bps:9765/services/SubscriptionApprovalWorkFlowProcess/</Property>
      <Property name="username">admin</Property>
      <Property name="password">admin</Property>
      <Property name="callbackURL">https://wso2apim:8243/services/WorkflowCallbackService</Property>
   </SubscriptionCreation>
   ````

5. Log into the API Store using the URL [https://wso2apim/store](https://wso2apim/store), create a new application 
and subscribe to one of the APIs.

6. Log into the API Admin console using the URL [https://wso2apim/admin](https://wso2apim/admin), navigate to
Tasks -> Subscription Creation page and approve the API subscription request.

7. Now log into the API Store again and try to invoke the above API using the API console.


## Building Docker Images   
   
If required below steps can be followed to build the above Docker images:

1. Download [Oracle JDK 1.8.144](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html) 
Linux 64 bit distribution and copy it to the following folders:

   ````bash
   cp /path/to/jdk-8u144-linux-x64.tar.gz kubernetes-apim/dockerfiles/apim/files/
   cp /path/to/jdk-8u144-linux-x64.tar.gz kubernetes-apim/dockerfiles/analytics/files/
   ````

2. Download [MySQL Connector for Java 5.1.34](https://downloads.mysql.com/archives/c-j/) distribution and copy it's JAR 
file to the following folders:

   ````bash
   cp mysql-connector-java-5.1.34-bin.jar kubernetes-apim/dockerfiles/apim/files/
   cp mysql-connector-java-5.1.34-bin.jar kubernetes-apim/dockerfiles/analytics/files/
   ````

3. Download WSO2 API Manager 2.1.0, WSO2 API Analytics 2.1.0 and WSO2 Enterprise Integrator 6.1.1 distributions via [WUM](http://wso2.com/wum) and copy those to the following folders:

   ````bash
   cp wso2am-2.1.0.zip kubernetes-apim/dockerfiles/apim/files/
   cp wso2am-analytics-2.1.0.zip kubernetes-apim/dockerfiles/analytics/files/
   cp wso2ei-6.1.1.zip kubernetes-ei/dockerfiles/bps/files/
   ````
4. Download [ballerinalang binary](https://ballerinalang.org/downloads/ballerina-runtime/ballerina-0.93.zip) and copy 
it to the following folder:

   ````bash
   cp ballerina-0.93.zip microservices/loan-applications-service/files/
   ````  

5. Build microservices and their Docker images using the below bash script:

   ```bash
   cd microservices/
   ./build.sh
   ```
  
6. Build WSO2 API Manager and WSO2 API Analytics Docker images using the below bash script:

    ````bash
    cd kubernetes-apim/dockerfiles/
    ./build.sh
    ````
    
7. Build WSO2 Enterprise Integrator BPS Docker image using the below bash script:

    ````bash
    cd kubernetes-ei/dockerfiles/
    ./build.sh


## Removing Deployment

- Execute the ```undeploy.sh``` script found in the root folder for undeploying all OpenShift resources.

- If MiniShift is used, execute the below command to remove the temporary data folders used for persistence volumes:

  ````bash
  minishift ssh "sudo rm -rf /tmp/data/"
  ````
