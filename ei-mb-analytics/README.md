# EI - MB - Analytics - setup
This docker setup demonstrate a DLC and analytics capabilities of using an EI-MB-Analytics setup.

##Versions
* [**v1.0.0**](v1.0.0) - Setup using EI 6.1.1

## How to run
1. Install docker into your setup environment
2. Clone this Git repository
3. Depending on the demo version you choose to run, download the desired **wso2ei-x.x.x.zip**
4. Copy the **wso2ei-x.x.x.zip** file into **presales-demos/ei-mb-analytics/vX.X.X/ei-setup/** location
5. Copy the **wso2ei-x.x.x.zip** file into **presales-demos/ei-mb-analytics/vX.X.X/ei-mb-setup/** location
6. Copy the **wso2ei-x.x.x.zip** file into **presales-demos/ei-mb-analytics/vX.X.X/ei-analytics-setup/** location
7. Go to **presales-demos/ei-mb-analytics/vX.X.X/** location and run the following commands.
    ```bash
    ## Below command will build and run the full setup.
    docker-compose up
    ```
    **Optional**
    If you need to start the services as background processes execute the following command.
    ```bash
    docker-compose up -d
    ```
8. To stop the services execute the following command.
   ```bash
   docker-compose down
   ``` 
