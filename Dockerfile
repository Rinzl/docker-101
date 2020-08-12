FROM alpine:latest

RUN apk update && apk add --no-cache neofetch
RUN mkdir /app
COPY docker-entrypoint.sh /app/
WORKDIR /app

ADD https://raw.githubusercontent.com/Rinzl/docker-101/master/demo.txt /app/
ENTRYPOINT ["/app/docker-entrypoint.sh"]
CMD [ "neofetch" ]