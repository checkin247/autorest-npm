# Docker image for building autorest typescript client
> built on top of alpine npm lts
> installs autorest 

Docker container at: https://hub.docker.com/repository/docker/checkin247/autorest-npm

## Usage

Run the docker image to create the autorest client.

Mount a volume to the "/tmp" directory with the api declaration.git remote add origin git@github.com:checkin247/autorest-npm.git

Autorest reference:
https://github.com/azure/autorest/blob/main/docs/generate/flags.md

### Example
Create an autorest typescript sdk from the example api.

Windows
````shell
docker run --rm -it -v ${PWD}/example/:/tmp  checkin247/autorest-npm --input-file=./reference/Example.yaml --typescript --output-folder=/tmp/typescript --clear-temp
````

Cleanup the output folder using

Windows
````shell
forfiles /P .\example /M autorest-* /C "cmd /c if @isdir==TRUE rmdir /s /q @file"
forfiles /P .\example /M yarn--* /C "cmd /c if @isdir==TRUE rmdir /s /q @file"
rmdir example\cache /s /q
del example\_root_.autorest.lock
````