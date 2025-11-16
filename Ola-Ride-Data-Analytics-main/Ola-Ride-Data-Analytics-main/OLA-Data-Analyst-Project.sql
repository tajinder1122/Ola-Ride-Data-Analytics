Create Database Ola;
Use Ola;
/* 1. Retrieve all successful bookings */
Create View Successful_Bookings As
SELECT * FROM bookings WHERE `Booking _Status` ='Success';
SELECT * FROM Successful_Bookings;
/* 2.Find the average ride distance for each vehicle type: */
SELECT Vehicle_Type, AVG(Ride_Distance) As Avg_Ride_Distance FROM bookings WHERE `Booking _Status` ='Success' GROUP BY `Vehicle_Type`;
/* 3.Get the total number of cancelled rides by customers: */
SELECT COUNT(*) FROM bookings WHERE `Booking _Status` = 'Cancelled by Customer';
/* 4.List the top 5 customers who booked the highest number of rides: */
SELECT Customer_ID,COUNT(Booking_ID) as Total_rides FROM bookings GROUP BY Customer_ID ORDER BY Total_rides DESC limit 5;
/* customer id is unique and booking id changes for each ride so count booking id DESC- descending limit 5 ir sort in desc order */
/* 5.Get the number of rides cancelled by drivers due to personal and car-related issues: */
SELECT COUNT(*) FROM bookings WHERE `Booking _Status` = 'Cancelled by Driver' AND Cancelled_Rides_by_Driver = '1';
/* 6.Find the maximum and minimum driver ratings for Prime Sedan bookings: */
SELECT MAX(Driver_Ratings) as max_ratings, MIN(Driver_Ratings) as min_ratings FROM bookings WHERE Vehicle_Type = 'Prime Sedan' AND `Booking _Status` = 'Success';
/* 7.Retrieve all rides where payment was made using UPI: */
SELECT * FROM bookings WHERE Payment_Method = 'UPI';
/* 8.Find the average customer rating per vehicle type: */
SELECT Vehicle_Type, AVG(Customer_Rating) as avg_customer_rating FROM bookings WHERE `Booking _Status` = 'Success' GROUP BY Vehicle_Type;
/* 9.Calculate the total booking value of rides completed successfully: */
SELECT SUM(Booking_Value) as total_booking_value FROM bookings WHERE `Booking _Status` = 'Success';
/* 10.List all incomplete rides along with the reason: */
SELECT Booking_ID, Incomplete_Rides_Reason FROM bookings WHERE Incomplete_Rides ='1';











