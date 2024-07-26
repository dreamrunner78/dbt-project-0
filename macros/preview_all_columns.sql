-- macros/preview_all_columns.sql

{% macro preview_all_columns(model_name, limit=5) %}
 {% set results = run_query('select id, name,type,description,registry, repository, tag from dcp_images') %}
{% do results.print_table() %}
{% endmacro %}
