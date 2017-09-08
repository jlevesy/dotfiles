#!/bin/sh

LOCK_IMAGE=/tmp/i3lock.png

scrot ${LOCK_IMAGE}
convert ${LOCK_IMAGE}  -blur 5x2 ${LOCK_IMAGE}
i3lock -i ${LOCK_IMAGE}
rm ${LOCK_IMAGE}
