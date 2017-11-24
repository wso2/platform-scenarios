# Dockerized Presales Demos
The following repository contains the dockerized version of most commonly used demos needed for WSO2 pre-sales. 
## Demo scenarios
* [API Manager - Key Manager - SSO setup](tree/master/apim-keymanager-sso)

## How to dockerize your demo
Make sure you follow the below standards when dockerizing your demo.
1. First check if the demo scenario you are working on matches with an existing demo.
   * If there's an exisiting demo try to reuse it. 
   * If the exisitng demo is out dated. Then update the setup by adding a new version.
   * If the exisitng demo is part of your full demo, then try to decouple the demo scenarios and try to utilize the exisitng one. Later on add the rest of the new scenarios as new projects. 
2. Make sure you adhere to following folder structure when dockerizing your demo.
   ```bash
   └── presales-demos
    ├── <demo-scenario-name>
    │   ├── README.md
    │   └── <version>
    │       ├── <individual-product-setup>
    │       │   ├── Dockerfile
    │       │   ├── resources
    │       │   │   ├── api
    │       │   │   │   ├── sample-api.xml
    │       │   │   ├── conf
    │       │   │   │   ├── master-datasources.xml
    │       │   │   ├── lib
    │       │   │   │   └── mysql-connector-java-5.1.44-bin.jar
    │       │   │   └── product-setup.sh
    │       ├── <another-product-setup>
    │       │   ├── Dockerfile
    │       │   ├── resources
    .       .   .   .
    .       .   .   .
    │       ├── mysql-setup
    │       │   ├── db-dump.sql
    │       │   ├── Dockerfile
    │       │   └── my.cnf
    │       └── docker-compose.yml
    └── README.md
   ```