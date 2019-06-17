#!/bin/sh -l

env
echo
cat $GITHUB_EVENT_PATH
sh -c "echo $*"
