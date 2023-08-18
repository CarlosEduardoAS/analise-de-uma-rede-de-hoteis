WITH hotel_revenue_full AS 
(SELECT * FROM `zippy-purpose-391713.hotels.hotel_revenue_2018`
UNION ALL
SELECT * FROM `zippy-purpose-391713.hotels.hotel_revenue_2019`
UNION ALL
SELECT * FROM `zippy-purpose-391713.hotels.hotel_revenue_2020`)

SELECT * FROM hotel_revenue_full
LEFT JOIN `zippy-purpose-391713.hotels.market_segment`
ON hotel_revenue_full.market_segment = `zippy-purpose-391713.hotels.market_segment`.market_segment
LEFT JOIN `zippy-purpose-391713.hotels.meal_cost`
ON hotel_revenue_full.meal = `zippy-purpose-391713.hotels.meal_cost`.meal