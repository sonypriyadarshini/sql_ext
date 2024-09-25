{% test testdef123(model, column_name) %}
select * from {{model}} where {{column_name}} is null
{% endtest %}

 