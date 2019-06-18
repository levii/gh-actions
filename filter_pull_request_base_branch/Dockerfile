FROM quay.io/levii/debian:9.5-slim-with-jq

LABEL "com.github.actions.name"="Filter Pull Request Base Branch"
LABEL "com.github.actions.description"="filters to stop workflows"
LABEL "com.github.actions.icon"="filter"
LABEL "com.github.actions.color"="gray-dark"

LABEL "repository"="https://github.com/levii/gh-actions"

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
