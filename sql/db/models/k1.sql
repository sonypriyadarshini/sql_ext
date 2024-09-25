WITH seeddata1 AS (

  SELECT * 
  
  FROM {{ ref('seeddata1')}}

)

SELECT *

FROM seeddata1
