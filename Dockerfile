FROM ubuntu:latest

WORKDIR /usr/src/app


RUN apt-get update && apt-get install golang-go -y 
    
COPY hello-world.go .

ENV GO111MODULE=off

RUN go build hello-world.go

ENTRYPOINT ["./hello-world"]




