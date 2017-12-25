# Neo4j Sample

http://neo4j.com/docs/developer-manual/current/

## Requirements for creating a guide

```bash
brew install asciidoctor
sudo gem install tilt thread_safe
```

## Run Neo4j in docker

    docker run -e NEO4J_AUTH=none -p 7474:7474 -p 7687:7687 -it -v $(pwd)/docker/neo4j/conf:/var/lib/neo4j/conf neo4j

## Cypher Query Language

    :play https://raw.githubusercontent.com/benkeil/neo4j-sample/master/html/servicemap.html

## Create a REST request

Format the query to json

    cat example/currency-service-v1.cql | jq -Rs -f jq.statement.json

Send it to the REST api

    cat example/currency-service-v1.cql | jq -Rs -f jq.statement.json | curl -H "Accept: application/json" -H "Content-Type: application/json" -d@- http://localhost:7474/db/data/transaction/commit