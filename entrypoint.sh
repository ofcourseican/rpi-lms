#!/bin/sh

exec squeezeboxserver --user squeezeboxserver \
	--prefsdir $SQUEEZE_VOL_PERSIST/prefs \
	--logdir $SQUEEZE_VOL_LOG \
	--cachedir $SQUEEZE_VOL_PERSIST/cache "$@"

