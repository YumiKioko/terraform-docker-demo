FROM hashicorp/terraform:1.8.4

WORKDIR /terraform

# Override the ENTRYPOINT set in base image
ENTRYPOINT []

CMD ["terraform"]
