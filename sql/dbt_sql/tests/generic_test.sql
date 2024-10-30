{{
  config({    
    "error_if": ">10",
    "warn_if": ">30"
  })
}}

WITH seedusage AS (

  SELECT * 
  
  FROM {{ ref('seedusage')}}

)

SELECT *

FROM seedusage
