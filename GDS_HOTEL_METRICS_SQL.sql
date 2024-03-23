--  4) Total capacity metric 
SELECT SUM(Capacity) As tot_cap FROM global_gds.fact_aggregated_bookings;

-- 5) Total Successful Bookings (FAB)
SELECT SUM(successful_bookings) As success_bkgs FROM global_gds.fact_aggregated_bookings;

-- 6) Occupancy percentage 
SELECT (SUM(successful_bookings) / SUM(Capacity)) * 100 As occupancy_per FROM global_gds.fact_aggregated_bookings;

-- 1) Revenue_Realized Sum 
SELECT SUM(revenue_realized) As Revenue FROM global_gds.fact_bookings;

-- 2) Total Bookings 
SELECT COUNT(booking_id) As tot_bkgs FROM global_gds.fact_bookings;

-- 3) Average Rating
SELECT AVG(ratings_given) As Avg_Rating FROM global_gds.fact_bookings where ratings_given <> '' ;

-- 7) Total Cancelled Bookings 
SELECT COUNT(booking_id) As tot_cancelled_bkgs FROM global_gds.fact_bookings where booking_status = 'Cancelled' ;

-- 8) Cancellation Rate  
SELECT (COUNT(CASE WHEN booking_status = 'Cancelled' THEN 1 END) /COUNT(booking_id)) AS can_rate FROM global_gds.fact_bookings  ;