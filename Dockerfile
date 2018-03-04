FROM stephank/archlinux:aarch64-latest

RUN pacman -Sy && \
    pacman-db-upgrade && \
    pacman -S mongodb 

VOLUME ["/data/db"]
EXPOSE 27017 

ENTRYPOINT ["/usr/sbin/mongod", "--dbpath /data/db", "--journal"]


