#!/bin/bash

echo "Generating GraphQL schemas based on the RAML schemas present at $1"

# Parameter 1 must be the working directory. Passing it as a parameter helps with platform portability
rm -rf graphqlschemas
mkdir graphqlschemas
docker run -v "$1":/raml-project --rm statisticsnorway/raml-to-graphql-schema:latest