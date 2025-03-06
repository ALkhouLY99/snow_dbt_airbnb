{% macro learn_variables() %}
{% set ur_name = 'abdo' %}
{{log("hola "~ ur_name ,info=True)}}
{{log("hola user "~ var("user_name","no user name is set!!")~" !",info=True)}}
{% endmacro %}