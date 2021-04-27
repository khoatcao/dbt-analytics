{{config (materialized = 'table',sort = 'timestamp')}}


select 
     timestamp(CONCAT(SUBSTR(ga_date,1,4),'-',SUBSTR(ga_date,5,2),'-',SUBSTR(ga_date,7,2))) as date, 
     ga_7dayUsers as ga_7_dayUsers,
     report_end_date, 
     report_start_date, 
     _airbyte_emitted_at,
     _airbyte_weekly_active_users_hashid	 


from airbyte_ganalytics.weekly_active_users
