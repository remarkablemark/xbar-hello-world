#!/bin/bash

# get `{name}` from `{name}.{time}.{ext}`
PLUGIN_NAME=$(
  find plugin -type f -name '*.js' |
  xargs basename |
  awk -F '.' '{print $1}'
)

# find file that matches plugin name in plugin folder
PLUGIN_PATH=$(find "$HOME/Library/Application Support/xbar/plugins" -name "$PLUGIN_NAME*")

# delete file in plugin folder (if exists)
if [[ -n "$PLUGIN_PATH" ]]; then
  rm "$PLUGIN_PATH"
  test $? -ne 0 || echo "Deleted '$PLUGIN_PATH'"
fi
