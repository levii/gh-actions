FROM debian:9.5-slim

LABEL "com.github.actions.name"="Hello World"
LABEL "com.github.actions.description"="description"
LABEL "com.github.actions.icon"="mic"
LABEL "com.github.actions.color"="purple"

LABEL "repository"="https://github.com/levii/gh-actions"

RUN apt-get update \
 && apt-get install -y \
      jq \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

ADD entrypoint.sh /entrypoint.sh
ADD github-event-example /tmp/github-event-example/
ENTRYPOINT ["/entrypoint.sh"]
