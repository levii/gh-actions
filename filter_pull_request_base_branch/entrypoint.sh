#!/bin/sh -l

set -e

if [ "$GITHUB_EVENT_NAME" != "pull_request" ]
then
  echo "event does not 'pull_request' (got: $GITHUB_EVENT_NAME)"
  exit 78
fi

pull_request=`cat $GITHUB_EVENT_PATH | jq -M '.pull_request'`
pull_request_base_branch=`echo $pull_request | jq -r '.base.ref'`

pattern=$1

case $pull_request_base_branch in
  $pattern)
    echo "$pull_request_base_branch matches $pattern"
    exit 0
    ;;
  *)
    echo "$pull_request_base_branch does not match $pattern"
    exit 78
esac
