WITH ordedetails AS (

  SELECT * 
  
  FROM {{ source('hive_metastore.upload_latest', 'ordedetails') }}

)

SELECT *

FROM ordedetails
