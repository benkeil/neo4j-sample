MERGE (partnerProgramServiceV1:Service {name:'partner-program-service-v1'})
MERGE (sedodb2:Database {name:'sedodb2'})
WITH partnerProgramServiceV1, sedodb2
MATCH (spring:Framework {name:'spring'})
MERGE (partnerProgramServiceV1)-[:USE_FRAMEWORK]->(spring)
MERGE (partnerProgramServiceV1)-[:HAS_DEPENDENCY]->(sedodb2)
RETURN partnerProgramServiceV1, sedodb2, spring