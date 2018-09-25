#!/bin/sh

docker run -d \
	-p 9000:9000 \
	-p 9090:9090 \
	-p 3483:3483 \
	-p 3483:3483/udp \
	-v $(pwd)/vol_lms_persist:/var/lib/squeezeboxserver \
	-v $(pwd)/vol_lms_log:/var/log/squeezeboxserver \
	-v $(pwd)/vol_lms_media:/media \
	--name="lms" \
	lms-rpi:local
