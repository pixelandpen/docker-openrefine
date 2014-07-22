#!/bin/bash

if [ -z "$REFINE_MEMORY" ] ; then
    REFINE_MEMORY="1024M"
fi

OpenRefine/refine -i 0.0.0.0 -d /mnt/refine -m $REFINE_MEMORY
