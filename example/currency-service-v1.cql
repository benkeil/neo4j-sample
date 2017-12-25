MERGE (currencyServiceV1:Service {name:'currency-service-v1'})
MERGE (sedodb2:Database {name:'sedodb2'})
WITH currencyServiceV1, sedodb2
MATCH (spring:Framework {name:'spring'})
MERGE (currencyServiceV1)-[:USE_FRAMEWORK]->(spring)
MERGE (currencyServiceV1)-[:HAS_DEPENDENCY]->(sedodb2)
RETURN currencyServiceV1, sedodb2, spring