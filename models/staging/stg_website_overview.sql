{{config(materialized = 'table',sort = 'timestamp')}}


select 
      timestamp(CONCAT(SUBSTR(ga_date,1,4),'-',SUBSTR(ga_date,5,2),'-',SUBSTR(ga_date,7,2))) as date, 
      ga_users, 
      ga_exitRate as ga_exit_Rate, 
      ga_newUsers as ga_new_Users, 
      ga_sessions, 
      ga_pageviews, 
      ga_bounceRate as ga_bounce_Rate, 
      report_end_date, 
      ga_avgTimeOnPage as ga_avg_time_one_page, 
      report_start_date, 
      ga_sessionsPerUser as ga_sessions_PerUser, 
      ga_avgSessionDuration as ga_avg_Session_Duration, 
      ga_pageviewsPerSession as ga_page_views_Per_Session, 
      _airbyte_emitted_at,
      _airbyte_website_overview_hashid

from airbyte_ganalytics.website_overview