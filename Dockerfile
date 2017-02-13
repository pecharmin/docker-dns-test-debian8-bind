# DNS Tests on Debian 8 with BIND by Docker

FROM debian:8

LABEL maintainer "dockerhub@arminpech.de"

LABEL RELEASE=20170213-2038

RUN apt-get update
RUN apt-get install -y --no-install-recommends curl bind9 dnsutils

EXPOSE 53/udp 53/tcp
CMD ["curl", "-o", "/etc/bind/named.conf", "https://raw.githubusercontent.com/pecharmin/docker-dns-test-data/master/bind-named.conf"] 
ENTRYPOINT ["/usr/sbin/named"]

# vim: set syntax=docker tabstop=2 expandtab:
