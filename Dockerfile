FROM resin/rpi-raspbian:stretch
MAINTAINER Kai Timmer, https://github.com/ofcourseican


RUN     apt-get update && \
	apt-get -y install perl adduser iproute iputils-ping curl wget faad flac lame sox libio-socket-ssl-perl

RUN useradd -s /bin/bash lms

ENV    SQUEEZE_VOL_PERSIST /var/lib/squeezeboxserver
ENV    SQUEEZE_VOL_LOG /var/log/squeezeboxserver

ENV 	LANG C.UTF-8
# Latest Version here: http://downloads.slimdevices.com/nightly/?ver=7.9
ENV LMS_URL http://downloads.slimdevices.com/nightly/7.9/sc/c2bb2205188b2cf2da27506983ace73aec51c2e0/logitechmediaserver_7.9.2~1537430919_arm.deb

RUN	curl -Lf -o /tmp/lms.deb $LMS_URL && \
	dpkg -i /tmp/lms.deb && \
	rm -f /tmp/lms.deb && \
	apt-get clean

VOLUME 	$SQUEEZE_VOL_PERSIST $SQUEEZE_VOL_LOG
EXPOSE 	3483 3483/udp 9000 9090

COPY entrypoint.sh /entrypoint.sh
RUN chmod 755 /entrypoint.sh

USER lms
ENTRYPOINT ["/entrypoint.sh"]

