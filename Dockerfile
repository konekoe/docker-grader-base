FROM ubuntu:20.04
MAINTAINER Konekoe team dockerhub@examos.fi

# Add user student with home dir
RUN useradd --create-home student

# Set timezone
ENV TZ=Europe/Helsinki
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone

# Update package cache and install make
RUN apt-get update && apt-get -y install build-essential valgrind