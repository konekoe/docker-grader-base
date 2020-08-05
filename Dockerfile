FROM ubuntu:20.04
MAINTAINER Konekoe team dockerhub@examos.fi

# Add user student with home dir
RUN useradd --create-home student