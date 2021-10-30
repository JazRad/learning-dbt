{% macro limit_data_in_dev(column_name, development_days_of_data=3) %}
{% if target.name == 'default' %}
where {{ column_name }} >= dateadd('day', {{ development_days_of_data }}, current_timestamp)
{% endif %}
{% endmacro %}