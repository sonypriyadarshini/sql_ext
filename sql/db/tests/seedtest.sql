{{
  config({    
    "error_if": ">100"
  })
}}

WITH seedview AS (

  SELECT * 
  
  FROM {{ ref('seedview')}}

)

SELECT *

FROM seedview
