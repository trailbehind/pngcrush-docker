FROM ubuntu:18.04
MAINTAINER Jesse Crocker <jesse@gaiagps.com>

RUN apt-get update -y && \
    apt-get install -y pngcrush && \
    apt-get clean && \
    rm -rf /var/lib/apt/ /var/cache/apt/ /var/cache/debconf/

ADD process.sh /

ENTRYPOINT ["/process.sh"]
