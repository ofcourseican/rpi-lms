#!/bin/sh

chown -R squeezeboxserver: /var/lib/squeezeboxserver
chown -R squeezeboxserver: /var/log/squeezeboxserver

exec squeezeboxserver --user squeezeboxserver \
	--prefsdir $SQUEEZE_VOL_PERSIST/prefs \
	--logdir $SQUEEZE_VOL_LOG \
	--cachedir $SQUEEZE_VOL_PERSIST/cache "$@"

