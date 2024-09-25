WITH seed_check AS (

  SELECT * 
  
  FROM {{ ref('seed_check')}}

)

{#Retrieves data from the seed check for review or analysis.#}
SELECT *

FROM seed_check
