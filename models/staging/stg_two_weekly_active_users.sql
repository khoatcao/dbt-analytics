{{config (materialized = 'table',sort = 'timestamp')}}


select 
      timestamp(CONCAT(SUBSTR(ga_date,1,4),'-',SUBSTR(ga_date,5,2),'-',SUBSTR(ga_date,7,2))) as date, 
      ga_14dayUsers as ga_14_day_Users, 
      report_end_date, 
      report_start_date, 
      _airbyte_emitted_at, 
      _airbyte_two_weekly_active_users_hashid	

from airbyte_ganalytics.two_weekly_active_users