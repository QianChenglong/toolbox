FROM alpine
ENTRYPOINT ["sh"]

RUN apk --update add openssh nmap nmap-scripts curl tcpdump bind-tools jq nmap-ncat ethtool iputils socat
RUN apk --update-cache --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ --allow-untrusted add lrzsz etcd-ctl
