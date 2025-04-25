# go-building
Building applications in docker images

Start the application and make sure it runs without errors<br/>
To create binary:
> go build -o app ./cmd/*

To run:
> ./app

Or do it all at once:

> go run ./cmd/*

To create a docker image:
> docker build -t app:v1 .

