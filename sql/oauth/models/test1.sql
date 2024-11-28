WITH test567 AS (

  SELECT * 
  
  FROM {{ source('hive_metastore.default_1', 'test567') }}

)

SELECT *

FROM test567
