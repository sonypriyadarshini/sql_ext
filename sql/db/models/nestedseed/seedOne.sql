WITH seed_check AS (

  SELECT * 
  
  FROM {{ ref('seed_check')}}

)

{#Retrieves all records from the seed check for review.#}
SELECT *

FROM seed_check