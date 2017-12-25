MERGE (paymentRulesServiceV1:Service {name:'payment-rules-service-v1'})
MERGE (currencyServiceV1:Service {name:'currency-service-v1'})
MERGE (partnerProgramServiceV1:Service {name:'partner-program-service-v1'})
WITH paymentRulesServiceV1, currencyServiceV1, partnerProgramServiceV1
MATCH (camel:Framework {name:'camel'})
MERGE (paymentRulesServiceV1)-[:USE_FRAMEWORK]->(camel)
MERGE (paymentRulesServiceV1)-[:HAS_DEPENDENCY]->(currencyServiceV1)
MERGE (paymentRulesServiceV1)-[:HAS_DEPENDENCY]->(partnerProgramServiceV1)
RETURN paymentRulesServiceV1, currencyServiceV1, partnerProgramServiceV1, camel