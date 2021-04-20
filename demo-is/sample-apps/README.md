# Sample Web apps

War files will be downloaded and volume mounted here so the exploaded files can be modified.

restart sample-apps

## setup

1. Update `.properties` files found in `sample-apps/<app>/WEB-INF/classes`.

    - Set Urls to point to `localhost`
    - Update any `Key`, `Secret`, or `Username/Password` with values configured in the Identity Server

1. Restart the service to implement any changes.

    ```shell
    docker-compose restart sample-apps
    ```
