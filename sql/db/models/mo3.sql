WITH seeddata1 AS (

  SELECT * 
  
  FROM {{ ref('seeddata1')}}

),

Subgraph_1 AS (

  WITH mo1 AS (
  
    SELECT * 
    
    FROM {{ ref('mo1')}}
  
  ),
  
  seeddata1_1 AS (
  
    SELECT * 
    
    FROM {{ ref('seeddata1')}}
  
  ),
  
  Reformat_1 AS (
  
    SELECT * 
    
    FROM seeddata1 AS in0
  
  )
  
  SELECT * 
  
  FROM Reformat_1

)

{#Retrieves all records from the initial dataset for analysis.#}
SELECT *

FROM seeddata1
