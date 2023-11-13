FROM ubuntu: latest
MAINTAINER chrysler <qcdpalomar@tip.edu.ph>

# skip prompts
ARG DEBIAN_FRONTEND=noninteractive

# update packages
RUN apt update
RUN apt upgrade

# install packages
RUN apt install -y apache2 mariadb-server

# set entrypoint
ENTRYPOINT apache2ctl -D FOREGROUND
