{% test positive_value(model,column_name) %}   -- generic_custome_test
select * from {{model}}
where {{column_name}} < 1
{% endtest %}