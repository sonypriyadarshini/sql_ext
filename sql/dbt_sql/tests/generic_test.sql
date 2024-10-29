{{
  config({    
    "error_if": ">1",
    "warn_if": ">3"
  })
}}

WITH seedusage AS (

  SELECT * 
  
  FROM {{ ref('seedusage')}}

)

SELECT *

FROM seedusage
