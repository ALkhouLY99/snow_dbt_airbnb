{% macro no_nulls_in_columns(model) %}
    select * from {{model}} 
    where 
    {% for col in adapter.get_columns_in_relation(model) -%}       --jinja_adpater
        {{col.column}} is null 
    {% if not loop.last %} or {% endif %}     --jinja_bulitin_variable

    {% endfor %}
{% endmacro %} 
