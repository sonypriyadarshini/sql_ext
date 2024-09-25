WITH seedOne AS (

  SELECT * 
  
  FROM {{ ref('seedOne')}}

)

SELECT *

FROM seedOne
