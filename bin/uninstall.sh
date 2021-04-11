#!/bin/bash

# get `{name}` from `{name}.{time}.{ext}`
PLUGIN_NAME="$(
  find plugin -type f -name '*.js' |
  xargs basename |
  awk -F '.' '{print $1}'
)"

# delete file that matches plugin name
find "$HOME/Library/Application Support/xbar/plugins/" -name "$PLUGIN_NAME*" -delete
