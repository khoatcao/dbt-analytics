{{config(materialized = 'table',sort = 'timestamp')}}


select 
        timestamp(CONCAT(SUBSTR( ga_date,1,4),'-',SUBSTR( ga_date,5,2),'-',SUBSTR( ga_date,7,2))) as date,
        ga_users, 
        ga_browser,  
        ga_exitRate as ga_exit_Rate, 
        ga_newUsers as ga_new_Users, 
        ga_sessions, 
        ga_pageviews as ga_page_views, 
        ga_bounceRate as ga_bounce_Rate, 
        report_end_date, 
        ga_avgTimeOnPage as ga_avg_time_on_page, 
        ga_deviceCategory as ga_device_category, 
        report_start_date, 
        ga_operatingSystem as ga_operating_system, 
        ga_sessionsPerUser as ga_sessions_per_user,
        ga_avgSessionDuration as ga_avg_session_duration,
        ga_pageviewsPerSession as ga_page_views_per_session, 
        _airbyte_emitted_at,
        _airbyte_devices_hashid	
        
from airbyte_ganalytics.devices