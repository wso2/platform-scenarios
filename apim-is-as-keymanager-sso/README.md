# API Manager - IS as Key Manager - SSO setup
This docker setup demonstrate the Single Sign On integration between API Manager Publisher and Store applications. Identity Server is configured as the Key Manager. 

## Versions
* [**v1.0.0**](v1.0.0) - Setup using MySQL v5.6, wso2-am-2.1.0, wso2is-km-5.3.0
  * Documentations: [Configuring WSO2 Identity Server as a Key Manager](https://docs.wso2.com/display/AM210/Configuring+WSO2+Identity+Server+as+a+Key+Manager), [Configuring Identity Server as IdP for SSO](https://docs.wso2.com/display/AM200/Configuring+Identity+Server+as+IdP+for+SSO)

## How to run
1. Install docker into your setup environment.
2. Clone this Git repository. If you need to download **only** this demo scenario follow [this blog](http://amalg-blogs.blogspot.com/2017/12/github-clone-only-sub-directory-of.html).
3. Depending on the demo verison you choose to run, download the desired **wso2am-x.x.x.zip** and **wso2is-km-x.x.x.zip** WUM updated zip files.
4. Copy the **wso2am-x.x.x.zip** file into **presales-demos/apim-is-as-keymanager-sso/vX.X.X/apim-sso-setup/** location.
5. Copy the **wso2is-km-x.x.x.zip** file into **presales-demos/apim-is-as-keymanager-sso/vX.X.X/apim-sso-setup** location.
6. Go to **presales-demos/apim-is-as-keymanager-sso/vX.X.X/** location and run the following commands.
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
    docker-compose build apim-sso-service
    ```
    To run the services individually you can execute the commands in-order as following.
    ```bash
    docker-compose up mysql-service
    docker-compose up apim-sso-service
    ```
7. To stop the services execute the following command. 
    ```bash
    docker-compose down
    ```
## Setup 
**Port offset**
IS Keymanager = 100 (9543)
API Manager = 101  (9544)

![Setup Diagram](https://docs.wso2.com/download/attachments/46893234/image2015-7-20%2012%3A36%3A1.png?version=1&modificationDate=1437420950000&api=v2 "Setup Diagram")

## Troubleshoot
When loading the APIM-store page ([https://localhost:9543/store](https://localhost:9543/store)) for the first time, if you ran into below error add Assertion Consumer URL into SSO configurations.

    ```bash
    TID: [-1234] [] [2018-01-23 09:42:35,713]  WARN {org.wso2.carbon.identity.sso.saml.servlet.SAMLSSOProviderServlet} -  ALERT: Invalid Assertion Consumer URL value 'https://172.19.0.3:9543/store/jagg/jaggery_acs.jag' in the AuthnRequest message from  the issuer : API_STORE in tenant domain : carbon.super. Possibly an attempt for a spoofing attack 
    ```
The above error happens because docker reallocate a new IP when the host machine restarts. Follow the below steps to update the configurations.

**Adding the Assertion Consumer URL to SSO configs**
   * Login to [https://localhost:9544/carbon/sso-saml/add_service_provider.jsp?SPAction=editServiceProvider&issuer=API_STORE&spName=API_STORE](https://localhost:9544/carbon/sso-saml/add_service_provider.jsp?SPAction=editServiceProvider&issuer=API_STORE&spName=API_STORE) with admin credentials.
   * Copy Assertion Consumer URL given in the server error log and Add it as shown in the below caption. Make sure to make the new URL as the **Default Assertion Consumer URL**.
   * ![Caption](v1.0.0/other-resources/diagrams/sso-config.png "Caption")