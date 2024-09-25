WITH seednew AS (

  SELECT * 
  
  FROM {{ ref('seednew')}}

)

{#Retrieves all records from the seednew dataset for further analysis.#}
SELECT *

FROM seednew
