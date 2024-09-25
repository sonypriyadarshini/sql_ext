{% test wewewewe(model, column_name, num=7) %}
select * from {{model}} limit {{num}}
{% endtest %}

 