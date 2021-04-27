{{config(materialized = 'table',sort = 'timestamp')}}

select 
      ga_city, 
      timestamp(CONCAT(SUBSTR( ga_date,1,4),'-',SUBSTR( ga_date,5,2),'-',SUBSTR( ga_date,7,2))) as date,
      ga_metro, 
      ga_users, 
      ga_region, 
      ga_country, 
      ga_exitRate as ga_exit_rate, 
      ga_newUsers as ga_new_users, 
      ga_sessions 
      ga_continent, 
      ga_pageviews as ga_page_views, 
      ga_bounceRate as ga_bounce_rate, 
      ga_subContinent as ga_sub_continent, 
      report_end_date, 
      ga_avgTimeOnPage as ga_avg_time_on_page, 
      report_start_date, 
      ga_sessionsPerUser as ga_sessions_per_user, 
      ga_avgSessionDuration as ga_avg_sesssion_duration, 
      ga_pageviewsPerSession	as ga_pape_views_persesion, 
      _airbyte_emitted_at,
      _airbyte_locations_hashid	

    
from airbyte_ganalytics.locations