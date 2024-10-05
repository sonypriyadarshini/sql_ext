WITH seed1 AS (

  SELECT * 
  
  FROM {{ ref('seed1')}}

),

Join_1 AS (

  SELECT * 
  
  FROM seed1 AS in0
  INNER JOIN seed1 AS in1

)

SELECT *

FROM Join_1
