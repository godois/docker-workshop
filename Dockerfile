############################################################
# Dockerfile to build MongoDB 3.4.2 environment
# Based on baseImage
############################################################

# Set the base image to base:1.0
FROM java:8u111-jre

# File Author / Maintainer
MAINTAINER Marcio Godoi <souzagodoi@gmail.com>

USER root

ADD bin/show-da-xuxa.jar /home/root/

RUN chmod 777 /home/root/show-da-xuxa.jar

ADD bin/entrypoint.sh /home/root/

RUN chmod 777 /home/root/entrypoint.sh

ENTRYPOINT ["/home/root/entrypoint.sh"]