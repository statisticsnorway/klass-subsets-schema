#!/bin/bash

rm -rf gsim-raml-schema
git clone https://github.com/statisticsnorway/gsim-raml-schema.git

echo "Copying latest version of dependencies (schemas) from 'gsim-raml-schema' into this project folder"

cp -r ./gsim-raml-schema/schemas/About.raml ./schemas/About.raml
cp -r ./gsim-raml-schema/schemas/Agent.raml ./schemas/Agent.raml
cp -r ./gsim-raml-schema/schemas/AgentInRole.raml ./schemas/AgentInRole.raml
cp -r ./gsim-raml-schema/schemas/Role.raml ./schemas/Role.raml

cp -r ./gsim-raml-schema/schemas/abstract/AdministrativeDetails.raml ./schemas/abstract/AdministrativeDetails.raml
cp -r ./gsim-raml-schema/schemas/abstract/AgentDetails.raml ./schemas/abstract/AgentDetails.raml
cp -r ./gsim-raml-schema/schemas/abstract/IdentifiableArtefact.raml ./schemas/abstract/IdentifiableArtefact.raml
cp -r ./gsim-raml-schema/schemas/abstract/MultilingualText.raml ./schemas/abstract/MultilingualText.raml

mkdir examples
cp -r ./gsim-raml-schema/examples .

echo "Done copying. Cleaning up . . ."

rm -rf gsim-raml-schema

echo "All done!"