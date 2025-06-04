ARG DIND_TAG=27.5.1-dind-alpine3.21
FROM docker:${DIND_TAG}
RUN apk add --no-cache docker-credential-ecr-login
RUN mkdir -p $HOME/.docker/ && echo '{"credsStore":"ecr-login","credHelpers":{"public.ecr.aws":"ecr-login"}}' > $HOME/.docker/config.json
