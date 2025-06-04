FROM hashicorp/terraform:1.5.7

WORKDIR /terraform

# Override the ENTRYPOINT set in base image
ENTRYPOINT []

CMD ["terraform"]
