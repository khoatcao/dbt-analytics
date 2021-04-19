select 
         {{ ga_date_to_timestamp('ga_date') }} as date
from airbyte_ganalytics.devices