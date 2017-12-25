MERGE (mlsReportServiceV1:Service {name:'mls-report-service-v1'})
MERGE (currencyServiceV1:Service {name:'currency-service-v1'})
MERGE (paymentRulesServiceV1:Service {name:'payment-rules-service-v1'})
MERGE (sedodb2:Database {name:'sedodb2'})
WITH mlsReportServiceV1, currencyServiceV1, paymentRulesServiceV1, sedodb2
MATCH (camel:Framework {name:'camel'})
MERGE (mlsReportServiceV1)-[:USE_FRAMEWORK]->(camel)
MERGE (mlsReportServiceV1)-[:HAS_DEPENDENCY]->(currencyServiceV1)
MERGE (mlsReportServiceV1)-[:HAS_DEPENDENCY]->(paymentRulesServiceV1)
MERGE (mlsReportServiceV1)-[:HAS_DEPENDENCY]->(sedodb2)
RETURN mlsReportServiceV1, currencyServiceV1, paymentRulesServiceV1, camel