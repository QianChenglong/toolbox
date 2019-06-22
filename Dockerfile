FROM alpine:3.9
ENTRYPOINT ["sh"]

RUN apk --update add openssh nmap nmap-scripts curl tcpdump bind-tools jq nmap-ncat ethtool lrzsz telnet
