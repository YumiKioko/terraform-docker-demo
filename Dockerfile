FROM hashicorp/terraform:1.8.4

RUN apk update && apk upgrade --no-cache

WORKDIR /terraform

# Override the ENTRYPOINT set in base image
ENTRYPOINT []

CMD ["terraform"]
