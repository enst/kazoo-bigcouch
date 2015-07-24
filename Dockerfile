FROM bingli/kazoo-installer
MAINTAINER Bing Li <enst.bupt@gmail.com>

RUN rpm -ivh http://repo.2600hz.com/Packages/Kazoo-Bigcouch/CentOS_6/x86_64/R15B/0.4.x/kazoo-bigcouch-R15B-0.4.x-1.el6.x86_64.rpm

COPY entrypoint.sh /root

ENTRYPOINT ["/root/entrypoint.sh"]

EXPOSE 5984 5986



