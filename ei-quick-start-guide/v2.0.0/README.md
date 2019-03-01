# EI Quick Start Guide setup
This docker setup demonstrate the EI quick start guide setup.

## Versions
* [**v2.0.0**](v2.0.0) - Setup using EI 6.4.0 (Tested with (WUM updated) wso2ei-6.4.0+1550292474630.full.zip)
  * Documentations: [EI Quick Start Guide](https://docs.wso2.com/display/EI640/Quick+Start+Guide)
**Please note in order to try 'expose database as a service'section a WUM updated EI pack would be required.**

## How to run
1. Install docker into your setup environment
2. Clone this Git repository. If you need to download **only** this demo scenario follow [this blog](http://amalg-blogs.blogspot.com/2017/12/github-clone-only-sub-directory-of.html).
3. Depending on the demo version you choose to run, download the desired **wso2ei-6.4.0.zip**.
4. Extract **wso2ei-6.4.0.zip** content into **presales-demos/ei-quick-start-guide/vX.X.X/ei-setup/resources/** location
5. Extract **wso2ei-6.4.0.zip** content into  **presales-demos/ei-quick-start-guide/vX.X.X/bps-setup/resources/** location
6.Extract **wso2ei-6.4.0.zip** content into  **presales-demos/ei-quick-start-guide/vX.X.X/ei-analytics-setup/resources/** location
7. Go to **presales-demos/ei-quick-start-guide/vX.X.X/** location and run the following commands.
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
    docker-compose build analytics-service
    docker-compose build bps-service
    docker-compose build ei-service
    ```
    To run the services individually you can execute the commands in-order as following.
    ```bash
    docker-compose up analytics-service
    docker-compose up bps-service
    docker-compose up ei-service
    ```
8. To stop the services execute the following command.
   ```bash
   docker-compose down
   ``` 
## Setup 
![Sequence Diagram](v2.0.0/other-resources/diagrams/sequence-diagram.png "Sequence Diagram")