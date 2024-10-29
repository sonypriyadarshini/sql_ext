{% macro func_1(col1) %}
concat({{col1}}, "__", "updated")
{% endmacro %}

 