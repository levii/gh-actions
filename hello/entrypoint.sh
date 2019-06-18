#!/bin/sh -l

set -ex

if [ -z "$GITHUB_EVENT_PATH" ]
then
  export GITHUB_EVENT_PATH=github-event-example/pull_request.synchronize.json
fi

env
[ -e "$GITHUB_EVENT_PATH" ] && cat $GITHUB_EVENT_PATH | jq -M .

echo $GITHUB_EVENT_NAME
pull_request=`cat $GITHUB_EVENT_PATH | jq -M '.pull_request'`
pull_request_base_branch=`echo $pull_request | jq -r '.base.ref'`
