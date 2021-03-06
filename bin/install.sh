#!/bin/bash

# git working directory
GIT_WORKING_DIR=$(git rev-parse --show-toplevel)

# get plugin filename
PLUGIN_FILENAME=$(
  find plugin -type f -name '*.js' |
  xargs basename
)

# symlink plugin in plugin folder
ln -sf "$GIT_WORKING_DIR/plugin/$PLUGIN_FILENAME" "$HOME/Library/Application Support/xbar/plugins/$PLUGIN_FILENAME"

echo "Symlinked '$PLUGIN_FILENAME' in plugin folder"
