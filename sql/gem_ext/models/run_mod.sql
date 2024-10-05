WITH cu1 AS (

  SELECT * 
  
  FROM {{ ref('cu1')}}

),

gem_custom_cu1 AS (

  {#Creates a custom gem for 'cu1'.#}
  {{ sql_gem_ext.gem_custom('cu1') }}

)

SELECT *

FROM gem_custom_cu1
