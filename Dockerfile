FROM centos:7
RUN rpm --import /etc/pki/rpm-gpg/RPM-GPG-KEY-CentOS-7
RUN yum -y update && yum -y install epel-release

LABEL authors="witt"

WORKDIR ./gfw
COPY ./trojan_v2ray_install.sh /
EXPOSE 5556:443
CMD bash /trojan_v2ray_install.sh