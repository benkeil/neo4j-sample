MERGE (cronjob:Cronjob {name:'MlsDailyTransferJob'})
MERGE (mlsReportServiceV1:Service {name:'mls-report-service-v1'})
WITH mlsReportServiceV1, cronjob
MATCH (cron:Framework {name:'cron'})
MERGE (cronjob)-[:USE_FRAMEWORK]->(cron)
MERGE (cronjob)-[:HAS_DEPENDENCY]->(mlsReportServiceV1)
RETURN cronjob, mlsReportServiceV1, cron