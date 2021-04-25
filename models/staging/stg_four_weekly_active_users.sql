select 
        timestamp(CONCAT(SUBSTR( ga_date,1,4),'-',SUBSTR( ga_date,5,2),'-',SUBSTR( ga_date,7,2))) as date,
        ga_date, 
        ga_28dayUsers as ga_28_day_Users, 
        report_end_date, 
        report_start_date, 
        _airbyte_emitted_at,
        _airbyte_four_weekly_active_users_hashid as _airbyte_hashid 


from airbyte_ganalytics.four_weekly_active_users

