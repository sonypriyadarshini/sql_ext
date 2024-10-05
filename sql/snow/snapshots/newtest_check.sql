{% snapshot newtest_check %}
{{
  config({    
    "strategy": "timestamp",
    "target_schema": "qa_schema",
    "unique_key": "C_TIMESTAMP",
    "updated_at": "SERVICE_LABEL_1"
  })
}}

WITH C_TEST_USEALL_ALIAS AS (

  SELECT *
  
  FROM {{ source('QA_DATABASE.QA_SCHEMA_QA_SCHEMA', 'C_TEST_USEALL_ALIAS') }}

),

Limit_1 AS (

  {#Selects a limited number of records for focused analysis.#}
  SELECT *
  
  FROM C_TEST_USEALL_ALIAS AS in0
  
  LIMIT 5

)

{#Retrieves data from a specified limit for review or analysis.#}
SELECT *

FROM Limit_1

{% endsnapshot %}
