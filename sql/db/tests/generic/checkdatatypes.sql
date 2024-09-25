{% test checkdatatypes(model, column_name, valu1=false, col1=false, tba1=false) %}
select * from {{model}}
{% endtest %}

 