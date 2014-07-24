#!/bin/bash

if [ -z "$REFINE_MEMORY" ] ; then
    TOTAL_MEMORY=`free -b | grep Mem | awk '{print $2}'`
    REFINE_MEMORY=$(( $TOTAL_MEMORY * 6 / 10 ))
fi

exec OpenRefine/refine -i 0.0.0.0 -d /mnt/refine -m $REFINE_MEMORY
