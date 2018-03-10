#!/bin/sh

ARGS=${ARGS:-""}

if [ ! -z "${PIPE}" ]; then
  ARGS=$ARGS" --device ${PIPE}"
fi

if [ ! -z "${DEVICENAME}" ]; then
  ARGS=$ARGS" -n ${DEVICENAME}"
fi

if [ ! -z "${USERNAME}" ]; then
  ARGS=$ARGS" -u ${USERNAME}"
fi

if [ ! -z "${PASSWORD}" ]; then
  ARGS=$ARGS" -p ${PASSWORD}"
fi

if [ ! -z "${MULTICAST_INTERFACES}" ]; then
  for IF in ${MULTICAST_INTERFACES}; do
  	route add -net 224.0.0.0 netmask 224.0.0.0 $IF
  done;
fi

librespot $ARGS
