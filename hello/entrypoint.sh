#!/bin/sh -l

env
echo
[[ -e $GITHUB_EVENT_PATH ]] && cat $GITHUB_EVENT_PATH | jq
sh -c "echo $*"
