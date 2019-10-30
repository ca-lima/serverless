# Serverless lightweight dockker image

A lightweight serverless docker image.

## Usage

Building 

``
docker build -t ca-lima/serverless .
`` 
 
 Running using AWS Profiles
 
``
docker run --rm -it -e AWS_PROFILE=$AWS_PROFILE -v $PWD:/<working-dir> -v ~/shared/.aws:/home/serverless-user/.aws -w /<working-dir> ca-lima/serverless serverless deploy
`` 
> Notice that there is the container is executed by a non-root user configured during image building

Running using AWS Credentials
 
``
docker run --rm -it -e AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID} -e AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY} -v $PWD:/<working-dir> -w /<working-dir> ca-lima/serverless serverless deploy
`` 
 
 
