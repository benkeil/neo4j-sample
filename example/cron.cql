MERGE (cron:Cronjob {name:'MlsDailyTransferJob'})
MERGE (mlsReportServiceV1:Service {name:'mls-report-service-v1'})
WITH mlsReportServiceV1, cron
MATCH (php:Language {name:'php'})
MERGE (cron)-[:IS_WRITTEN_IN]->(php)
MERGE (cron)-[:HAS_DEPENDENCY]->(mlsReportServiceV1)
RETURN cron, mlsReportServiceV1, php