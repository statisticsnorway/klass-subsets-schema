# KLASS Subsets Schema

This repository contains the RAML definitions for Classification Subsets, as well as their dependencies from `gsim-raml-schema`.

The new definitions created for KLASS Subsets are contained in these files:
- schemas/ClassificationSubsetSeries.raml
- schemas/ClassificationSubsetVersion.raml
- schemas/abstract/ClassificationSubsetCode.raml
- schemas/abstract/ContactInformation.raml

All other files are dependencies for these definitions imported from gsim-raml-schema.

There are two helper (bash) scripts.

- `update_dependencies.sh` gets all the schemas from the `gsim-raml-schema` repository, and copies the ones that the Subsets schemas are dependent on into this project, overwriting what is saved here. If you want to make sure that your GraphQL schema contains the most up-to-date definitions, you should run this before you generate the GraphQL schema.

- `generate_gql.sh` uses the `statisticsnorway/raml-to-graphql-schema:latest` to convert all the raml files in this project into a single graphql file, that gets stored at `graphqlschemas/schema.graphql`

