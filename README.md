# Codr Schema Client

[![Docker Image CI](https://github.com/CodrJS/client-schema/actions/workflows/docker-image.yaml/badge.svg)](https://github.com/CodrJS/client-schema/actions/workflows/docker-image.yaml)

## Purpose

This repository stores all of Codr's JSON schemas and more at [https://schema.codr.sh](https://schema.codr.sh). All shared schemas should utilize this schema registry for syncronization across the ecosystem.

## Contributing

When contributing, keep in mind that every microservice uses this repository. For any changes made, please make sure that the schema you're updating has a new version!

All schemas, templates, and alike shall follow these naming conventions where `{name}` is the name of the schema and `{version}` is the version identifier.

- JSON Schemas: `{name}.{version}.schema.json`
- HTML templates: `{name}.{version}.template.html`
- etc.

All hosted files shall be stored in the `/schemas/` directory. The Dockerfile will automatically build the nginx server to host the files at the server root.

Finally, try to keep the schemas organized, creating new directories when necessary. For instance, Codr's Ory Kratos deployment (our SSO identity platform) uses the `/schemas/identity/` directory for identity configuration purposes.

### Prerequisites

```sh
# Clone the repo
git clone git@github.com:CodrJS/client-schema.git

# Build the nginx server
docker build -t codr-client-schema .

# Run the server locally
docker run --name client-schema -p 80:80 codr-client-schema
```
