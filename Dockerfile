FROM bitnami/java:1.8.402-7-debian-12-r7

ARG jdbc=ezyplatform_db
ARG dbname=ezyuser
ARG dbpassword=12345678

EXPOSE 8080 9090

USER root

WORKDIR /youngmonkey

# install requirement tools
RUN apt update && apt install wget unzip -y

# download and unzip ezyplatform
RUN wget https://ezyplatform.com/api/v1/platforms/0.0.4/download -O ./ezyplatform-0.0.4.zip
RUN unzip ./ezyplatform-0.0.4.zip && rm ./ezyplatform-0.0.4.zip

# set workdir to unziped foldder
WORKDIR /youngmonkey/ezyplatform

# update settings use ENV variables
RUN sed -i "s/localhost:3306/${jdbc}:3306/g" ./settings/setup.properties
RUN sed -i "s/username=root/username=${dbname}/g" ./settings/setup.properties
RUN sed -i "s/password=12345678/password=${dbpassword}/g" ./settings/setup.properties
