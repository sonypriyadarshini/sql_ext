WITH checkseed AS (

  SELECT * 
  
  FROM {{ ref('checkseed')}}

),

updated_names AS (

  {#Updates names in the dataset for consistency or accuracy.#}
  SELECT {{ dbt_sql.func_1('name') }} AS name_updated
  
  FROM checkseed AS in0

)

SELECT *

FROM updated_names
