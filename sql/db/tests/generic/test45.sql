{% test test45(model, column_name1) %}
select * from {{model}} where {{column_name1}} is null
{% endtest %}

 