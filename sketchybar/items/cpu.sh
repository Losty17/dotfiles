#!/bin/bash

sketchybar --add item cpu right \
           --set cpu update_freq=5 \
                     icon=􀧓  \
                     script="$PLUGIN_DIR/cpu.sh" \
           --subscribe cpu system_stats
