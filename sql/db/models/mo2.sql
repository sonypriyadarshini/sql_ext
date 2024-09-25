WITH ordedetails AS (

  SELECT * 
  
  FROM {{ source('hive_metastore.upload_latest', 'ordedetails') }}

)

{#Retrieves all details related to orders.#}
SELECT *

FROM ordedetails
