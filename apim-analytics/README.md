# API Manager - Analytics - setup
This docker setup demonstrate the apim analytics and log analytics functionality. 

## Versions
* [**v1.0.0**](v1.0.0) - Setup using MySQL v5.7, wso2-am-2.1.0, wso2am-analytics-2.1.0
  * Documentations: [Configuring WSO2 API Manager Server With Analytics](https://docs.wso2.com/display/AM210/Configuring+APIM+Analytics)

## How to run
1. Install docker into your setup environment.
2. Clone this Git repository.
3. Depending on the demo verison you choose to run, download the desired **wso2am-x.x.x.zip** and **wso2am-analytics-x.x.x.zip** WUM updated zip files.
4. Copy the **wso2am-x.x.x.zip** file into **presales-demos/apim-analytics/vX.X.X/apim-setup/** location.
5. Copy the **wso2am-analytics-x.x.x.zip** file into **presales-demos/apim-analytics/vX.X.X/analytics-setup** location.
6. Go to **presales-demos/analytics-setup/vX.X.X/** location and run the following commands.
    ```bash
    ## Below command will build and run the full setup.
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
    docker-compose build analytics-service
    docker-compose build apim-service
    ```
    To run the services individually you can execute the commands in-order as following.
    ```bash
    docker-compose up mysql-service
    docker-compose up analytics-service
    docker-compose up apim-service
    ```
7. To stop the services execute the following command. 
    ```bash
    docker-compose down
    ```
## Setup 
![Setup Diagram]
