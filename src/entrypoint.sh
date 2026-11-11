#!/bin/sh
# TOS wrapper: LinuxServer s6 starts as root and su-execs to abc. Run pyLoad
# directly as uid 1000, seeding the upstream default settings (web UI on
# 0.0.0.0) on first start.
set -u
set -e
mkdir -p /config/settings /downloads
if [ ! -s /config/settings/pyload.cfg ]; then
  cp /defaults/pyload.cfg /config/settings/pyload.cfg
fi
export LD_PRELOAD=/lib/libgcompat.so.0
exec pyload --userdir /config --storagedir /downloads
