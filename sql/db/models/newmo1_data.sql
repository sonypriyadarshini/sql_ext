WITH seeddata1 AS (

  SELECT * 
  
  FROM {{ ref('seeddata1')}}

)

{#Retrieves all records from the initial seed data for analysis.#}
SELECT *

FROM seeddata1
