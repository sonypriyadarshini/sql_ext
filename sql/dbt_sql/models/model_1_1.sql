WITH alias_updated AS (

  SELECT * 
  
  FROM {{ source('hive_metastore.unique_latest', 'alias_updated') }}

),

Reformat_1 AS (

  {#Updates segment names for better clarity in reporting.#}
  SELECT 
    concat(Segment, "updated") AS t1,
    {{ dbt_sql.func_1('Segment') }} AS test1
  
  FROM alias_updated AS in0

),

xyz_1 AS (

  SELECT * 
  
  FROM {{ ref('xyz_1')}}

),

checkseed AS (

  SELECT * 
  
  FROM {{ ref('checkseed')}}

),

gem1_alias_updated AS (

  {#Updates and retrieves data from the gem1 model for improved insights.#}
  {{ dbt_sql.gem1('alias_updated') }}

)

SELECT *

FROM Reformat_1
