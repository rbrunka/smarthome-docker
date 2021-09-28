FROM debian:buster-slim AS knxd

RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y knxd \
    && rm -rf /var/lib/apt/lists/* /var/log/* /var/tmp/* /tmp/* /usr/share/doc/* /usr/share/man/*/* /var/cache/apt \
    && adduser knxd tty

COPY entrypoint.sh /

RUN chmod 755 /entrypoint.sh

EXPOSE 3671/udp
EXPOSE 6720

ENTRYPOINT ["/entrypoint.sh"]
