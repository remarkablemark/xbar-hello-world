#!/bin/bash

# get plugin filename
PLUGIN_FILENAME="$(
  find plugin -type f -name '*.js' |
  xargs basename
)"

# create alias by symlinking plugin in plugin folder
ln -sf "$(pwd)/plugin/$PLUGIN_FILENAME" "$HOME/Library/Application Support/xbar/plugins/$PLUGIN_FILENAME"
