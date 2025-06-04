ARG DIND_TAG=27.5.1-dind-alpine3.21
FROM docker:${DIND_TAG}
RUN apk add --no-cache docker-credential-ecr-login
RUN mkdir -p $HOME/.docker/ && echo '{"credHelpers":{"public.ecr.aws":"ecr-login", "266775278674.dkr.ecr.eu-west-1.amazonaws.com": "ecr-login"}}' > $HOME/.docker/config.json
