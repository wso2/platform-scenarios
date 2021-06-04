# Demo-is Stack with Docker-compose

This compose file aims to be a [WYSIWYG](https://en.wikipedia.org/wiki/WYSIWYG) description of the demo stack. It will pull in docker images with as little configuration as necessary. It is designed to mimic the [k8s-is](https://github.com/wso2/kubernetes-is) helm chart as much as possible to make the maintenence of this demo easier.

## Set up

1. Add any required configurations to the [deployment.toml](../config-volumes/identity-server/deployment.toml).

1. Login to wso2 docker directory

    ```shell
    docker login docker.wso2.com
    ```

1. Start the demo apps by executing the below command

    ```shell
    docker-compose pull && docker-compose up -d
    ```

1. *Optional*, Show the logs of all of the running services

    ```shell
    docker-compose logs -f
    ```
    alt:
    ```shell
    docker-compose -p logs -f compose-logs.yml up -d
    ```
    - view logs ui [http://localhost:7650/ui/](http://localhost:7650/ui/)
    - view stats [http://localhost:8001/containers/docker/](http://localhost:8001/containers/docker/)

1. To shutdown stack. This will allow you to make any config changes

    ```shell
    docker-compose down
    ```
