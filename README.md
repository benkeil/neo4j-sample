# Neo4j Sample

http://neo4j.com/docs/developer-manual/current/

## Requirements

```bash
brew install asciidoctor
sudo gem install tilt thread_safe
```

## Run Docker

    docker run -p 7474:7474 -p 7687:7687 -it -v $(pwd)/docker/neo4j/conf:/var/lib/neo4j/conf neo4j

## Cypher Query Language

    :play https://raw.githubusercontent.com/benkeil/neo4j-sample/master/html/servicemap.html