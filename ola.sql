
CREATE TABLE ola_bookings (
    date TIMESTAMP,
    "time" TIME,
    booking_id VARCHAR(50) PRIMARY KEY,
    booking_status VARCHAR(100),
    customer_id VARCHAR(50),
    vehicle_type VARCHAR(50),
    pickup_location VARCHAR(255),
    drop_location VARCHAR(255),
    v_tat FLOAT,
    c_tat FLOAT,
    canceled_rides_by_customer TEXT,
    canceled_rides_by_driver TEXT,
    incomplete_rides VARCHAR(10),
    incomplete_rides_reason TEXT,
    booking_value INT,
    payment_method VARCHAR(50),
    ride_distance INT,
    driver_ratings FLOAT,
    customer_rating FLOAT,
    vehicle_images VARCHAR(255)
);

select * from ola_bookings 

--1. Retrieve all successful bookings:
Create View Successful_Bookings As --It create view for the fiven quary boss la sagli query nhi takacha fkt ek view creat karacha ani dyacha
select * from ola_bookings
where Booking_Status='Success';

Select * from Successful_Bookings;

--#2. Find the average ride distance for each vehicle type:

Create View average_ride_distance_for_each_vehicle As
Select Vehicle_Type,AVG(Ride_Distance)
as avg_distance from ola_bookings
Group By Vehicle_Type;

select * from average_ride_distance_for_each_vehicle;


--3. Get the total number of cancelled rides by customers:
drop view if exists cancelled_rides_by_customers;
Create View cancelled_rides_by_customers As
SELECT COUNT(*) FROM ola_bookings
WHERE Booking_Status = 'Canceled by Customer';

select * from cancelled_rides_by_customers;


--4. List the top 5 customers who booked the highest number of rides:
Create View Top_5_Customers As
SELECT Customer_ID, COUNT(Booking_ID) as total_rides
FROM ola_bookings
GROUP BY Customer_ID
ORDER BY total_rides DESC LIMIT 5;
 

--5. Get the number of rides cancelled by drivers due to personal and car-related issues:
Create View Rides_cancelled_by_Drivers_P_C_Issues As
SELECT COUNT(*) FROM ola_bookings
WHERE Canceled_Rides_by_Driver = 'Personal & Car related issue';


--6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
SELECT MAX(Driver_Ratings) as max_rating,
MIN(Driver_Ratings) as min_rating
FROM ola_bookings WHERE Vehicle_Type = 'Prime Sedan';


--7. Retrieve all rides where payment was made using UPI:
SELECT FROM ola_bookings
WHERE Payment_Method = 'UPI';


--8. Find the average customer rating per vehicle type:
Create View AVG_Cust_Rating As
SELECT Vehicle_Type, AVG(Customer_Rating) as avg_customer_rating
FROM ola_bookings
GROUP BY Vehicle_Type;



--9. Calculate the total booking value of rides completed successfully:
SELECT SUM(Booking_Value) as total_successful_ride_value
FROM ola_bookings
WHERE Booking_Status = 'Success';


--10. List all incomplete rides along with the reason:
SELECT Booking_ID, Incomplete_Rides_Reason
FROM ola_bookings
WHERE Incomplete_Rides = 'Yes';
