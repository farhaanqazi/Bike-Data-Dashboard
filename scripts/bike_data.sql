with cte as (SELECT * FROM bike_share_yr_0

UNION

select * from bike_share_yr_1)


select
dteday,
season,
cte.yr,
weekday,
hr,
rider_type,
riders,
price,
COGS,  --cost of goods
riders*price as revenue,
riders*price - COGS*riders as profit  
from cte as cte 
left join cost_table as c
on cte.yr = c.yr
