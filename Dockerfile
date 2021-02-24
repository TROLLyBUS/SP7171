FROM alpine:latest

RUN apk update && apk update && apk add --no-cache --upgrade bash

COPY ./script.sh ./script.sh
COPY ./file_file ./file_file

RUN chmod u+x ./script.sh

CMD ./script.sh
