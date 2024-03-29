# builder image
FROM golang:1.12

LABEL description="bitumvotingweb"
LABEL version="1.0"
LABEL maintainer "holdstockjamie@gmail.com"

USER root
RUN mkdir /app
COPY . /app
WORKDIR /app
RUN go build

EXPOSE 8000
CMD ["/app/bitumvotingweb"]
