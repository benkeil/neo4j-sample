MERGE (php:Language {name:'php'})
MERGE (java:Language {name:'java'})

MERGE (camel:Framework {name:'camel'})
MERGE (scm:Framework {name:'scm'})
MERGE (spring:Framework {name:'spring'})
MERGE (springBoot:Framework {name:'spring-boot'})
MERGE (symfony:Framework {name:'symfony'})

MERGE (scm)-[:IS_WRITTEN_IN]->(php)
MERGE (symfony)-[:IS_WRITTEN_IN]->(php)
MERGE (spring)-[:IS_WRITTEN_IN]->(java)
MERGE (camel)-[:IS_WRITTEN_IN]->(java)
MERGE (springBoot)-[:IS_WRITTEN_IN]->(java)