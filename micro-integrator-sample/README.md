# Micro Integrator Sample Setup
This docker setup demonstrates WSO2 Micro Integrator usage as explained in [EI Documentation](https://docs.wso2.com/display/EI640/Sending+a+Simple+Message+to+a+Service+Using+the+Micro+Integrator)

## Versions
* [**v1.0.0**](v1.0.0) - Setup using EI 6.4.0

## How to run
1. Install docker into your setup environment
2. Clone this Git repository. If you need to download **only** this demo scenario follow [this blog](http://amalg-blogs.blogspot.com/2017/12/github-clone-only-sub-directory-of.html).
3. Depending on the demo version you choose to run, download the desired **wso2ei-x.x.x.zip**
4. Open a terminal and navigate to the <EI_HOME>/bin/ directory.
5. Execute the following command to extract the Micro Integrator profile.
 ```bash
     ## Below command will run the profile creator
     sh profile-creator.sh
 ```
6. Insert the value '6' (for the Micro Integrator profile) on the terminal and execute the command. As a result of this command, the original WSO2 EI distribution is modified and a ZIP file with a new Micro Integrator distribution is generated.
7. Copy above micro integrator distribution into **micro-integrator-setup/vX.X.X/micro-integrator-setup/** location.
8. Redo step 4 -> 5 and insert value '5'(for msf4j profile) which would generate a msf4j distribution.
9. Copy above msf4j distribution into  **micro-integrator-setup/vX.X.X/msf4j-setup/** location.

10.Go to micro-integrator-setup/vX.X.X/ location and run the following commands.

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
    docker-compose build microei-service
    docker-compose build msf4j-service
    ```
    To run the services individually you can execute the commands in-order as following.
 ```bash
    docker-compose up microei-service
    docker-compose up msf4j-service
 ```
11. To stop the services execute the following command.
   ```bash
   docker-compose down
