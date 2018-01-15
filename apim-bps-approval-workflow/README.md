# API Manager approval workflow with BPS server
This docker setup demonstrate the API Manager application creation and subscription workflow approval setup using the Business Process Server humantask capabilities. 

## Versions
* [**v1.0.0**](v1.0.0) - Setup using MySQL v5.6, wso2am-2.1.0, wso2bps-3.6.0
  * Documentations: [Adding an Application Creation Workflow](https://docs.wso2.com/display/AM210/Adding+an+Application+Creation+Workflow), [Adding an API Subscription Workflow](https://docs.wso2.com/display/AM210/Adding+an+API+Subscription+Workflow)

## How to run
1. Install docker into your setup environment.
2. Clone this Git repository. If you need to download **only** this demo scenario follow [this blog](http://amalg-blogs.blogspot.com/2017/12/github-clone-only-sub-directory-of.html).
3. Depending on the demo version you choose to run, download the desired **wso2am-x.x.x.zip** and **wso2bps-x.x.x.zip** WUM updated zip files.
4. Copy the **wso2am-x.x.x.zip** and **wso2bps-x.x.x.zip** file into **presales-demos/apim-bps-approval-workflow/vX.X.X/apim-bps-setup/** location.
5. Go to **presales-demos/apim-bps-approval-workflow/vX.X.X/** location and run the following commands.
    ```bash
    ## Below command will build and run the full setup.
    docker-compose build
    docker-compose up
    ```
    **Optional**  
    If you need to start the services as background processes execute the following command.
    ```bash
    docker-compose up -d
    ```
    If you need to build the images individually you can execute the commands in-order as following.
    ```bash
    docker-compose build mysql-service
    docker-compose build apim-bps-service
    ```
    To run the services individually you can execute the commands in-order as following.
    ```bash
    docker-compose up mysql-service
    docker-compose up apim-bps-service
    ```
6. To stop the services execute the following command. 
    ```bash
    docker-compose down
    ```
## How to test 
* **Application Creation:** Login to https://localhost:9443/store and create new applications. You will see the applications will need admin approval to complete creation. Login to https://localhost:9443/admin console with admin credentials and approve the task under Application Creation category.
* **API Subscription:** Login to https://localhost:9443/publisher and deploy the sample Pizza API. Now login to https://localhost:9443/store and subscribe using the previously created application. You will see the subscription will need admin approval to complete. Login to https://localhost:9443/admin console with admin credentials and approve the task under Subscriptions category.
