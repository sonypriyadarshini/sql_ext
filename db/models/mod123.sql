WITH segment_country_1_2 AS (

  SELECT * 
  
  FROM {{ source('hive_metastore.unique_latest', 'segment_country_1') }}

),

Subgraph_1 AS (

  WITH Reformat_1 AS (
  
    SELECT * 
    
    FROM segment_country_1_2 AS in0
  
  ),
  
  Subgraph_1_2 AS (
  
    WITH Reformat_1_2 AS (
    
      SELECT * 
      
      FROM segment_country_1_2 AS in0
    
    )
    
    SELECT * 
    
    FROM Reformat_1_2
  
  )
  
  SELECT * 
  
  FROM Subgraph_1_2

)

SELECT *

FROM segment_country_1_2
