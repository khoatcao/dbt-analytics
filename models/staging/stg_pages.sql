{{config (materialized = 'table',sort = 'timestamp')}}

select 
       timestamp(CONCAT(SUBSTR( ga_date,1,4),'-',SUBSTR( ga_date,5,2),'-',SUBSTR( ga_date,7,2))) as date, 
       ga_exits, 
       ga_exitRate as ga_exit_rate, 
       ga_hostname as ga_host_name, 
       ga_pagePath as ga_page_path, 
       ga_entrances, 
       ga_pageviews as ga_page_views, 
       ga_bounceRate as ga_bounce_rate, 
       ga_entranceRate as ga_entrance_rate, 
       report_end_date, 
       ga_avgTimeOnPage as ga_avg_time_on_page, 
       report_start_date, 
       ga_uniquePageviews as ga_unique_pageviews, 
       _airbyte_emitted_at, 
       _airbyte_pages_hashid	

from airbyte_ganalytics.pages