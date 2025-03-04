select * from {{ref('dim_listings_cleansed')}}
where minimum_nights < 1      -- find violations okay
limit 10