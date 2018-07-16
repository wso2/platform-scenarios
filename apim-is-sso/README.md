# WSO2 API Manager with Identity Server


## Versions
* [**v1.0.0**](v1.0.0) - Setup using MySQL v5.7, wso2-am-2.2.0, wso2is-5.5.0
  * Documentations: [Configuring Identity Server as IdP for SSO](https://docs.wso2.com/display/AM200/Configuring+Identity+Server+as+IdP+for+SSO)

## Prerequisites

 * Install [Git](https://git-scm.com/book/en/v2/Getting-Started-Installing-Git), [Docker](https://www.docker.com/get-docker) and [Docker Compose](https://docs.docker.com/compose/install/#install-compose)
   in order to run the steps provided in following Quick start guide. <br><br>
 * In order to run this Docker Compose setup, you will need an active [Free Trial Subscription](https://wso2.com/free-trial-subscription)
   from WSO2 since the referring Docker images hosted at docker.wso2.com contains the latest updates and fixes for WSO2 API Manager 2.2.0<br>and
   WSO2 Identity Server 5.5.0. You can sign up for a Free Trial Subscription [here](https://wso2.com/free-trial-subscription). <br><br>
  <br><br>
## Quick Start Guide

1. Clone WSO2 API Manager Docker git repository.
    ```
    git clone https://github.com/wso2/platform-scenarios
    ```
    > If you are to try out an already released zip of this repo, please ignore this 1st step.

2. Switch to the `presales-demos/apim-is-sso/vX.X.X` folder.
    ```
    cd presales-demos/apim-is-sso/vX.X.X
    ```

3. Execute the following Docker Compose command to start the deployment.
    ```
    docker-compose up
    ```

4. Once the deployment is started, try to access the web UIs via following URLs and default credentials <br>
   on your favorite web browser.

   ```
   https://api-manager:9444/publisher
   https://api-manager:9444/store
   https://api-manager:9444/admin
   https://api-manager:9444/carbon/
   ```
   Access the servers using following credentials.

   * Username: admin <br>
   * Password: admin

5.To stop the services execute the following command.
    ```bash
    docker-compose down
    ```