{% test www_89(model, column_name, num1=2) %}
select * from {{model}} 
{% endtest %}

 