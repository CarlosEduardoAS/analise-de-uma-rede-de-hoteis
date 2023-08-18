WITH hotel_revenue_full AS 
(SELECT * FROM `zippy-purpose-391713.hotels.hotel_revenue_2018`
UNION ALL
SELECT * FROM `zippy-purpose-391713.hotels.hotel_revenue_2019`
UNION ALL
SELECT * FROM `zippy-purpose-391713.hotels.hotel_revenue_2020`)

SELECT 
arrival_date_year,
hotel,
ROUND(SUM((stays_in_week_nights+stays_in_weekend_nights)*adr),2) AS revenue
FROM hotel_revenue_full
GROUP BY arrival_date_year, hotel