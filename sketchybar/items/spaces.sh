#!/bin/bash

sketchybar --add event aerospace_workspace_change

# NOT_EMPTY_WORKSPACES=$(aerospace list-workspaces --monitor all --empty no)
# VISIBLE_WORKSPACES=$(aerospace list-workspaces --monitor all --visible)

# merge the two 
# COMBINED_WORKSPACES=$(echo "${NOT_EMPTY_WORKSPACES} ${VISIBLE_WORKSPACES} ${FOCUSED_WORKSPACE}" | tr ' ' '\n' | sort -n | uniq | tr '\n' ' ' | sed 's/ $//')

SPACE_SIDS=(1 2 3 4 5 6)
for sid in "${SPACE_SIDS[@]}"; do
  sketchybar --add item space.$sid left                          \
             --subscribe space.$sid aerospace_workspace_change   \
             --set space.$sid                                    \
                   icon=$sid                                     \
                   label.font="sketchybar-app-font:Regular:16.0" \
                   label.y_offset=-1                             \
                   click_script="aerospace workspace $sid"       \
                   script="$CONFIG_DIR/plugins/aerospace.sh $sid"
done
