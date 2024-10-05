{{
  config({    
    "materialized": "table",
    "strategy": "timestamp",
    "target_schema": "qa_schema"
  })
}}

WITH SNOW_CAN_CORRUPT_MODEL_STAGING AS (

  SELECT * 
  
  FROM {{ source('QA_DATABASE.QA_SCHEMA_QA_SCHEMA', 'SNOW_CAN_CORRUPT_MODEL_STAGING') }}

)

{#Accesses data from a staging area for further analysis or processing.#}
SELECT *

FROM SNOW_CAN_CORRUPT_MODEL_STAGING
