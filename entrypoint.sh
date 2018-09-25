#!/bin/sh

exec squeezeboxserver --user lms \
	--prefsdir $SQUEEZE_VOL_PERSIST/prefs \
	--logdir $SQUEEZE_VOL_LOG \
	--cachedir $SQUEEZE_VOL_PERSIST/cache "$@"

