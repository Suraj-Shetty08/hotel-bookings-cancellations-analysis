/*================================================
Hotel Bookings Database Setup
Author: Suraj Shetty
Dataset: Hotel Booking Demand (Kaggle:https://www.kaggle.com/datasets/jessemostipak/hotel-booking-demand?resource=download)
================================================*/

CREATE DATABASE IF NOT EXISTS hotel_bookings;
USE hotel_bookings;

-- Create Table
CREATE TABLE hotel_bookings (
    hotel TEXT,
    is_canceled INT,
    lead_time INT,
    arrival_date_year INT,
    arrival_date_month TEXT,
    arrival_date_week_number INT,
    arrival_date_day_of_month INT,
    stays_in_weekend_nights INT,
    stays_in_week_nights INT,
    adults INT,
    children TEXT,
    babies INT,
    meal TEXT,
    country TEXT,
    market_segment TEXT,
    distribution_channel TEXT,
    is_repeated_guest INT,
    previous_cancellations INT,
    previous_bookings_not_canceled INT,
    reserved_room_type TEXT,
    assigned_room_type TEXT,
    booking_changes INT,
    deposit_type TEXT,
    agent TEXT,
    company TEXT,
    days_in_waiting_list INT,
    customer_type TEXT,
    adr FLOAT,
    required_car_parking_spaces INT,
    total_of_special_requests INT,
    reservation_status TEXT,
    reservation_status_date TEXT
);

-- Import Data
LOAD DATA INFILE 'C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/hotel_bookings.csv'
INTO TABLE hotel_bookings
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;

-- Verify Import
SELECT COUNT(*) FROM hotel_bookings;

-- Rename Column
ALTER TABLE hotel_bookings RENAME COLUMN is_canceled TO is_cancelled;