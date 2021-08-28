FROM alpine:3.10
LABEL "repository"="https://github.com/devibadampudi/My-project.git"
LABEL "homepage"="https://github.com/devibadampudi/My-project.git"
LABEL "maintainer"="devibadampudi"

COPY entrypoint.sh /entrypoint.sh

RUN apk update && apk add bash git curl jq && apk add --update nodejs npm && npm install -g semver

ENTRYPOINT ["/entrypoint.sh"]
