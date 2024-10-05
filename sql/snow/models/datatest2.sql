{{
  config({    
    "materialized": "table"
  })
}}

WITH C_TEST_USEALL_ALIAS AS (

  SELECT * 
  
  FROM {{ source('QA_DATABASE.QA_SCHEMA_QA_SCHEMA', 'C_TEST_USEALL_ALIAS') }}

)

{#Retrieves all data from a specified test dataset for analysis.#}
SELECT *

FROM C_TEST_USEALL_ALIAS
