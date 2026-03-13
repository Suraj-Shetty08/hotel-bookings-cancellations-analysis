/*================================================
Hotel Bookings Analysis
Author: Suraj Shetty
Dataset: Hotel Booking Demand (Kaggle:https://www.kaggle.com/datasets/jessemostipak/hotel-booking-demand?resource=download)
================================================*/

-- Query 1: Cancellation Rate By Hotels
SELECT
	hotel,
	COUNT(hotel) AS total_bookings,
	SUM(is_cancelled) AS cancelled_bookings,
	ROUND(SUM(is_cancelled)/COUNT(*) *100,2) AS cancellation_rate
FROM hotel_bookings
GROUP BY hotel;

-- Query 2: Average Daily Rate (ADR) by Hotel Type
-- (Excluding cancelled bookings for accurate revenue representation)
SELECT
	hotel,
	ROUND(AVG(adr),2) AS average_daily_rate
FROM hotel_bookings
WHERE is_cancelled = 0
GROUP BY hotel;

-- Query 3: Seasonal Trend
-- Ordered by calendar month to identify seasonal patterns

SELECT
	arrival_date_month AS month,
    SUM(is_cancelled) AS cancellations,
    COUNT(*) AS total_bookings,
    ROUND(SUM(is_cancelled)/COUNT(*)*100,2) as cancellation_rate
FROM hotel_bookings 
GROUP BY arrival_date_month
ORDER BY
CASE arrival_date_month
    WHEN 'January' THEN 1
    WHEN 'February' THEN 2
    WHEN 'March' THEN 3
    WHEN 'April' THEN 4
    WHEN 'May' THEN 5
    WHEN 'June' THEN 6
    WHEN 'July' THEN 7
    WHEN 'August' THEN 8
    WHEN 'September' THEN 9
    WHEN 'October' THEN 10
    WHEN 'November' THEN 11
    WHEN 'December' THEN 12
END ASC;

-- Query 4: Market Segment Analysis
-- Identifying which booking channels carry the highest cancellation risk
SELECT
	market_segment,
	SUM(is_cancelled) AS cancellations,
    COUNT(*) AS total_bookings,
    ROUND(SUM(is_cancelled)/COUNT(*)*100,2) as cancellation_rate
FROM hotel_bookings
GROUP BY market_segment
ORDER BY cancellation_rate ASC;

-- Query 5: Lead Time Analysis
-- Do customers who book earlier cancel more?
SELECT
CASE
	WHEN lead_time<=7 THEN 'Last minute'
	WHEN lead_time BETWEEN 8 AND 30 THEN 'Short Notice'
    WHEN lead_time BETWEEN 31 AND 90 THEN 'Planned'
    WHEN lead_time BETWEEN 91 AND 180 THEN 'Well Planned'
    WHEN lead_time >=181 THEN 'Early' END AS booking_time_category,
SUM(is_cancelled) AS cancellations,
COUNT(*) AS total_bookings,
ROUND(SUM(is_cancelled)/COUNT(*)*100,2) AS cancellation_rate
FROM hotel_bookings
GROUP BY booking_time_category
ORDER BY 
CASE booking_time_category
	WHEN 'Early' THEN 1
    WHEN 'Well Planned' THEN 2
    WHEN 'Planned' THEN 3
    WHEN 'Short Notice' THEN 4
    WHEN 'Last minute' THEN 5 END ASC;

-- Query 6: Top 10 Countries by Cancellation Rate
-- Filtered to countries with more than 1000 bookings for statistical reliability
SELECT
	country,
	SUM(is_cancelled) AS cancellations,
	COUNT(*) AS total_bookings,
	ROUND(SUM(is_cancelled)/COUNT(*)*100,2) AS cancellation_rate
FROM hotel_bookings
GROUP BY country HAVING total_bookings>1000
ORDER BY cancellation_rate DESC
LIMIT 10;

-- Query 7: Repeat vs New Guest Cancellation Analysis
SELECT
	CASE is_repeated_guest
		WHEN 0 THEN 'New Customer'
		WHEN 1 THEN 'Repeat Customer' END AS status,
    SUM(is_cancelled) AS cancellations,
    COUNT(*) AS total_bookings,
    ROUND(SUM(is_cancelled)/COUNT(*)*100,2) AS cancellation_rate
FROM hotel_bookings
GROUP BY status;


-- Query 8: Room Type Analysis
SELECT
	reserved_room_type,
    SUM(is_cancelled) AS cancellations,
    COUNT(*) as total_bookings,
    ROUND(SUM(is_cancelled)/COUNT(*)*100,2) AS cancellation_rate
FROM hotel_bookings
GROUP BY reserved_room_type
ORDER BY reserved_room_type ASC;

-- Query 9: Deposit Type Analysis

SELECT
	deposit_type,
	SUM(is_cancelled) AS cancellations,
    COUNT(*) as total_bookings,
    ROUND(SUM(is_cancelled)/COUNT(*)*100,2) AS cancellation_rate
FROM hotel_bookings
GROUP BY deposit_type;