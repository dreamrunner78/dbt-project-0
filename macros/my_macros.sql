-- macros/my_macros.sql

{% macro my_macro() %}
    {% for i in range(10) %}
        select {{ i }} as number
    {% endfor %}
{% endmacro %}
