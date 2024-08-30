WITH parquet_all AS (

  SELECT * 
  
  FROM {{ source('hive_metastore.unique_latest', 'parquet_all') }}

),

Subgraph_1 AS (

  WITH Reformat_1 AS (
  
    SELECT * 
    
    FROM parquet_all AS in0
  
  ),
  
  Subgraph_1_2 AS (
  
    WITH Reformat_1_2 AS (
    
      SELECT * 
      
      FROM parquet_all AS in0
    
    )
    
    SELECT * 
    
    FROM Reformat_1_2
  
  )
  
  SELECT * 
  
  FROM Subgraph_1_2

)

SELECT *

FROM Subgraph_1
