FROM bingli/kazoo-base
MAINTAINER Bing Li <bingli1000@gmail.com>

RUN yum -y --nogpgcheck localinstall http://repo.2600hz.com/Packages/Kazoo-Bigcouch/CentOS_6/x86_64/R15B/0.4.x/kazoo-bigcouch-R15B-0.4.x-1.el6.x86_64.rpm

ADD entrypoint.sh /root/

VOLUME ["/srv", "/var/log"]

ENTRYPOINT ["/root/entrypoint.sh"]

EXPOSE 5984 5986



