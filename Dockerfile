FROM ubuntu:20.04
MAINTAINER Konekoe team dockerhub@examos.fi

# Add base grader dir & the base grader script
RUN mkdir -p /opt/grader
COPY base-grader /opt/grader/base-grader
chmod +x /opt/grader/base-grader

# Add user student with home dir
RUN useradd --create-home student

# Add grader directory into student's home dir
RUN mkdir -p /home/student/grader && chown student /home/student/grader

# Add rsync binary to the grader base image
RUN apt-get update && apt-get -y install rsync jq

# Entrypoint for every docker image that inherits from this image.
# DO NOT OVERWRITE THIS ENTRYPOINT, OR YOUR GRADER WON'T WORK !
# ENTRYPOINT ["rsync", "-aE", "/var/grader", "/home/student/grader"]

