ARG DIND_TAG=20.10.17-dind-alpine3.16
FROM docker:${DIND_TAG}
RUN apk add --no-cache docker-credential-ecr-login
RUN mkdir -p $HOME/.docker/ && echo '{"credsStore": "ecr-login"}' > $HOME/.docker/config.json
CMD ["/usr/local/bin/dockerd","--iptables=false", "--bridge=none"]
