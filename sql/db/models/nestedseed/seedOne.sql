WITH seed_check AS (

  SELECT * 
  
  FROM {{ ref('seed_check')}}

)

SELECT *

FROM seed_check
