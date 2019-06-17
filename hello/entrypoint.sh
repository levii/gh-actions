#!/bin/sh -l

set -ex
#export GITHUB_EVENT_PATH=/tmp/hello
#echo '{"hello": "world"}' > $GITHUB_EVENT_PATH

env
[ -e "$GITHUB_EVENT_PATH" ] && cat $GITHUB_EVENT_PATH | jq -M .
sh -c "echo $*"
