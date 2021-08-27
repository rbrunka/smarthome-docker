#!/bin/sh

knxd -e 1.1.90 -E 1.1.91:8 -D -T -R -S -B log -B single -b ft12cemi:/dev/ttyAMA0
