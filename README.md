# Serverless lightweight docker image

A lightweight serverless docker image.<br>
DockerHub reference on this [link](https://hub.docker.com/r/calima/serverless-docker).

## Usage

### Building 

```console
docker build -t calima/serverless-docker .
```
 
 ### Running using AWS Profiles
 
```console
docker run --rm -it -e AWS_PROFILE=$AWS_PROFILE -v $PWD:/<working-dir> -v ~/shared/.aws:/home/serverless-user/.aws -w /<working-dir> calima/serverless-docker deploy
```
> Notice that there is the container is executed by a non-root user configured during image building

### Running using AWS Credentials
 
```console
docker run --rm -it -e AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID} -e AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY} -v $PWD:/<working-dir> -w /<working-dir> calima/serverless-docker serverless deploy
``` 
 
 
