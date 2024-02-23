FROM centos:7
RUN yum -y update && yum install epel-release
LABEL authors="witt"
WORKDIR /gfw
COPY ./trojan_v2ray_install.sh /gfw
EXPOSE 5556:443
CMD bash
