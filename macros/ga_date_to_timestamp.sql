(% macro ga_date_to_timestamp(column_name, time_zone='"Asia/Bangkok"') -%}

TIMESTAMP( CONCAT( SUBSTR( {{column_name}},1,4),'-',SUBSTR( {{column_name}},5,2),'-',SUBSTR( {{column_name}},7,2)), {{time_zone}})
{%- endmacro %}















