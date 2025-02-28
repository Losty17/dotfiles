#!/bin/bash

MEMPRES_LABEL='System-wide memory free percentage: '

FREE_RAM_PERCENTAGE=$(memory_pressure | grep "$MEMPRES_LABEL" | sed "s/$MEMPRES_LABEL//" | sed 's/.$//')
RAM_USAGE=$((100 - $FREE_RAM_PERCENTAGE))

sketchybar --set $NAME label="$RAM_USAGE%"

