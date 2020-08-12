FROM alpine:latest

RUN apk update && apk add --no-cache neofetch
RUN mkdir /app
COPY docker-entrypoint.sh /app/
WORKDIR /app
ENTRYPOINT ["/app/docker-entrypoint.sh"]
CMD [ "neofetch" ]