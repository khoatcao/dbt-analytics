{{config (materialized = 'table',sort = 'timestamp')}}


select 
      timestamp(CONCAT(SUBSTR(ga_date,1,4),'-',SUBSTR(ga_date,5,2),'-',SUBSTR(ga_date,7,2))) as date, 
      ga_users, 
      ga_medium, 
      ga_source, 
      ga_exitRate as ga_exit_rate, 
      ga_newUsers as ga_new_users,
      ga_sessions, 
      ga_pageviews, 
      ga_bounceRate as ga_bounce_rate, 
      report_end_date, 
      ga_avgTimeOnPage as ga_avg_time_on_page, 
      ga_socialNetwork as ga_social_network, 
      report_start_date, 
      ga_sessionsPerUser as ga_sessions_PerUser, 
      ga_avgSessionDuration as ga_avgSessionDuration, 
      ga_pageviewsPersession as ga_pageviewsPerssion, 
      _airbyte_emitted_at,
      _airbyte_traffic_sources_hashid	
    
from airbyte_ganalytics.traffic_sources

