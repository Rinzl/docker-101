FROM alpine:latest

RUN apk update && apk add --no-cache neofetch
RUN mkdir /app
WORKDIR /app
COPY docker-entrypoint.sh .
ADD https://raw.githubusercontent.com/Rinzl/docker-101/master/demo.txt .
ENTRYPOINT ["/app/docker-entrypoint.sh"]
CMD [ "neofetch" ]