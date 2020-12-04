# KLASS Subsets Schema

This repository contains the RAML definitions for Classification Subsets, as well as their dependencies from `gsim-raml-schema`. The definitions for Classification Subsets have their own repository here because they do not directly contribute to the GSIM model as defined in `gsim-raml-schema`.

The new definitions created for KLASS Subsets are contained in these files:
- schemas/ClassificationSubsetSeries.raml
- schemas/ClassificationSubsetVersion.raml
- schemas/abstract/ClassificationSubsetCode.raml
- schemas/abstract/ContactInformation.raml

All other files are dependencies for these definitions imported from gsim-raml-schema.

# Updating and Generating schemas

There are two helper (bash) scripts.

- `update_dependencies.sh` gets all the schemas from the `gsim-raml-schema` repository, and copies the ones that the Subsets schemas are dependent on into this project, overwriting what is saved here. If you want to make sure that your GraphQL schema contains the most up-to-date definitions, you should run this before you generate the GraphQL schema.

- `generate_gql.sh` uses the `statisticsnorway/raml-to-graphql-schema:latest` to convert all the raml files in this project into a single graphql file, that gets stored at `graphqlschemas/schema.graphql`

## Usage
There are several places where a GraphQL schema is needed for Classification Subsets

- The LDS-klass instance in Prod: https://github.com/statisticsnorway/platform-dev/tree/master/flux/prod-bip-app/klass/lds-klass
- The LDS-klass instance Staging: https://github.com/statisticsnorway/platform-dev/tree/master/flux/staging-bip-app/klass/lds-klass
- The LDS instance for local development: https://github.com/statisticsnorway/klass-subsets-setup

The idea is that this repository should be used to make any edits to the relevant (RAML) schema definitions, and serve as a "master" for the RAML definitions used to generate the GraphQL schemas that are used in all these places. Once the RAML is edited by hand, the GraphQL schema can be generated and inserted into all relevant places manually or by an automated deployment pipeline.
