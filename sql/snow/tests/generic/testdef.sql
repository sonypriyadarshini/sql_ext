{% test testdef(model=true, column_name=true, col1=false) %}

select * from {{model}}
{% endtest %}

 