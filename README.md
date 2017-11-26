# Dockerized Presales Demos
The following repository contains the dockerized version of most commonly used demos needed for WSO2 pre-sales. 
## Demo scenarios
* [API Manager - Key Manager - SSO setup](apim-keymanager-sso)

## How to dockerize your demo
Make sure you follow the below standards when dockerizing your demo.
1. First check if the demo scenario you are working on matches with an existing demo.
   * If there's an existing demo try to reuse it. 
   * If the existing demo is out dated. Then update the setup by adding a new version.
   * If the existing demo is part of your full demo, then try to decouple the demo scenarios and try to utilize the existing one. Later on add the rest of the new scenarios as new projects. 
2. If the demo scenario isn't among existing ones discuss with the SA team and plan the demo properly to include it into the dockerized demo list. 
3. Make sure you adhere to following folder structure when dockerizing your demo.
   ```bash
   └── presales-demos
    ├── <demo-scenario-name>
    │   ├── README.md
    │   └── <version>
    │       ├── <individual-product-setup>
    │       │   ├── Dockerfile
    │       │   ├── resources
    │       │   │   ├── <more-resource-categories>
    │       │   │   │   ├── <resource-files>
    │       │   │   ├── conf
    │       │   │   │   ├── master-datasources.xml
    │       │   │   ├── lib
    │       │   │   │   └── <any-jars>
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
   * Give a meaning full name to the demo scenario and add a README to describe it and how to make use of it. Make the README as descriptive as possible including any setup diagrams and documentations. 
   * Version your demos. Versions are maintained to upgrade the demos when new product releases happen.
   * Try to atomize your demo and make atomic docker containers, so that they can be reused for other demos. (Make individual docker containers for each product)
      * When referencing to another **docker container service host** use the service name you define in the **docker-composer.yml** configuration. (Docker internally use this configuration to route the host mappings)
   * Add all resources that needs to be copied into the docker container under **resources** folder and categorize them accordingly. (**Tip:** Adding them into one folder and using one command in the dockerfile to copy them will reduce the image caches made by docker)
   * Try to reduce the size of the setup scripts and resources as much as possible. (**Ex:** Libraries such as 'mysql-connector-java-5.1.44.jar' has been downloaded from web using 'wget' in the product-setup.sh script. Product distribution is not included in the folder structure. It's rather instructed to the user to copy the WUM updated pack into the folder structure before running the scripts. However, keep the user setup steps as minimal as possible for easy deployment)
   * When you need to replicate a database along with the demo data into the docker container, as an example for MySQL db, take the **mysql-setup** scripts from an existing demo [apim-keymanager-sso] and replace the **db-dump.sql**)
   * Create the docker-composer.yml to automate the docker build process. Make sure to add the service dependencies to maintain the build order. Give proper names to services, images and containers for identification. 
4. Reduce the steps in Dockerfile as much as possible because number of steps will create respective docker image caches at the build.
5. Once you have prepared the dockerized demo, get it reviewed by the SA team and fine tune according to the feedback.
6. Update the main repo README (this) file with the demo scenario name.
6. Send a pull request to the master repo and get it reviewed and merged.