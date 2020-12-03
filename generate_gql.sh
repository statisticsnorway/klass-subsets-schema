#!/bin/bash

echo "Generating GraphQL schemas based on the RAML schemas present"

# Parameter 1 must be the working directory. Passing it as a parameter helps with platform portability
docker run -v "$1":/raml-project --rm statisticsnorway/raml-to-graphql-schema:latest