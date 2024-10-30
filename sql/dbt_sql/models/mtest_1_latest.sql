WITH model_1_1 AS (

  SELECT * 
  
  FROM {{ ref('model_1_1')}}

),

alias_updated AS (

  SELECT * 
  
  FROM {{ source('hive_metastore.unique_latest', 'alias_updated') }}

)

SELECT *

FROM model_1_1
