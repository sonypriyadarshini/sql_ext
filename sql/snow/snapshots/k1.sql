{% snapshot k1 %}
{{
  config({    
    "strategy": "timestamp",
    "target_schema": "qa_schema",
    "unique_key": "C_NUM",
    "updated_at": "C_DOUBLE"
  })
}}

WITH SNOW_CAN_CORRUPT_MODEL_STAGING AS (

  SELECT *
  
  FROM {{ source('QA_DATABASE.QA_SCHEMA_QA_SCHEMA', 'SNOW_CAN_CORRUPT_MODEL_STAGING') }}

)

{#Accesses staging data for the snow can corrupt model for review or analysis.#}
SELECT *

FROM SNOW_CAN_CORRUPT_MODEL_STAGING

{% endsnapshot %}
