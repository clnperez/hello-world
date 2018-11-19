FROM debian:stretch as builder

RUN apt-get update && apt-get install bazel && \
    rm -rf /var/lib/apt.lists/*

FROM golang:1.9.2@sha256:5f05b01ecbd1f781c9a98badfd8dfc0cd3afdb98491eca4ea714fc910cf898ef

COPY ./bazel-bin/hello /usr/local/bin/hello

CMD hello
