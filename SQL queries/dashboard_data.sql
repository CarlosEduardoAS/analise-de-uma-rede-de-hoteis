WITH hotel_revenue_full AS 
(SELECT * FROM `zippy-purpose-391713.hotels.hotel_revenue_2018`
UNION ALL
SELECT * FROM `zippy-purpose-391713.hotels.hotel_revenue_2019`
UNION ALL
SELECT * FROM `zippy-purpose-391713.hotels.hotel_revenue_2020`)

SELECT
hotel.hotel, 
hotel.stays_in_weekend_nights, 
hotel.stays_in_week_nights,  
hotel.country,  
hotel.adr, 
hotel.required_car_parking_spaces, 
hotel.reservation_status_date,
market.Discount,
meals.Cost AS meal_cost
FROM hotel_revenue_full AS hotel
JOIN `zippy-purpose-391713.hotels.market_segment` AS market
ON hotel.market_segment = market.market_segment
JOIN `zippy-purpose-391713.hotels.meal_cost` AS meals
ON hotel.meal = meals.meal