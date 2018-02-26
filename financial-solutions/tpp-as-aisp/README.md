# WSO2 Financial Solutions Demonstration for TPPs
This docker setup demonstrates the capabilities that WSO2 Platform provides
for TPPs in Open Banking.

## Demo Flow

![Setup Diagram](deployment.jpg?raw=true "Setup Diagram")

1. User will log into TPP App (an AISP app) via OIDC with the Identity Server at TPP side
2. TPP IS will use federation to authenticate the user via the Banks Identity Provider (in this demo will use an all in one APIM for this)
3. TPP app will use the token received from OIDC, to invoke the API which is exposed via the APIM in TPP side (APIs secured via OAuth2)
4. TPP APIM will call the API in EI which is exposed in a Standard format
5. EI will perform the necessary mediations, and map the API request to the standard expected by the back end banks and vise versa

## Versions
* [**v1.0.0**](v1.0.0) - Setup using
    - MySQL v5.6
    - WSO2 API Manager 2.1.0
    - WSO2 Identity Server as Key Manager 5.3.0
    - WSO2 Enteprise Integrator 6.1.1
    - Apache Tomcat 8.5.27.0
    - Nginx 1.10.3 (Ubuntu)

## How to run
1. Add the following host entries in your local machine (i.e. Host Machine).
```
127.0.0.1       api.silverbank.com
127.0.0.1       api.goldbank.com
127.0.0.1       identity.tpp.com
127.0.0.1       integration.tpp.com
127.0.0.1       api.tpp.com
127.0.0.1       aisp.tpp.com
```
2. Install docker into your setup environment.

3. Clone this Git repository. If you need to download **only** this demo scenario follow [this blog](http://amalg-blogs.blogspot.com/2017/12/github-clone-only-sub-directory-of.html).

4. Depending on the demo version you choose to run, download the desired **wso2am-x.x.x.zip** , **wso2is-km-x.x.x.zip** and **wso2ei-x.x.x.zip** WUM updated zip files.

5. Copy the above zip file into **presales-demos/finacial-solutions/tpp-demo/vX.X.X/packs/** location.

6. Go to **presales-demos/finacial-solutions/tpp-demo/vX.X.X/** location and run the following commands.
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
    docker-compose build demo-base
    docker-compose build mysql-service
    docker-compose build bank-apim-service
    docker-compose build tpp-is-service
    docker-compose build tpp-ei-service
    docker-compose build tpp-apim-service
    docker-compose build tpp-webapp
    docker-compose build nginx
    ```
    To run the services individually you can execute the commands in-order as following.
    ```bash
    docker-compose up demo-base
    docker-compose up mysql-service
    docker-compose up tpp-is-service
    docker-compose up bank-apim-service
    docker-compose up tpp-ei-service
    docker-compose up tpp-apim-service
    docker-compose up tpp-webapp
    docker-compose up nginx
    ```
7. To access the TPP AISP app, go to https://aisp.tpp.com/

8. You will be redirected to TPP Identity server and there you have the option to use the federated login from 
    Silver Bank Identity Provider (i.e api.silverbank.com). Credentials are;
    ```
    username : tomer
    password : tomer
    ```
9. To stop the services execute the following command.
    ```bash
    docker-compose down
    ```

## Troubleshooting

1. The setup use self signed certificates for all the host names. Hence there will be warnings in the browser when you 
access particular URLs. You can fix that by accepting the certificate to your browser.
    - **Note**: You will have to do this for below Gateway URLs as well
      - https://api.tpp.com:8243/
      - https://api.silverbank.com:8243/
