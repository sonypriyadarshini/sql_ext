WITH alias_updated AS (

  SELECT * 
  
  FROM {{ source('hive_metastore.unique_latest', 'alias_updated') }}

)

SELECT *

FROM alias_updated
