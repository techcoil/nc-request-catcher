FROM alpine:latest

ARG PORT=3000

RUN apk add -y nmap; apk add curl; apk cache clean

WORKDIR /app
COPY ./entrypoint.sh /app

EXPOSE $PORT

ENTRYPOINT ["sh", "./entrypoint.sh"]
