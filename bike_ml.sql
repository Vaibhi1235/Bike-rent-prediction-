-- 1. create a new database for bike dataset?
create database bike;

use bike;
-- 2.show all data from table ?

Select * from bike_new;

-- 3 show count of season winter from table ?
Select count(seasons) from bike_new where seasons='Winter';

-- 4 show rented bikecount whene season is winter ?

Select Rented_Bike from bike_new where seasons='winter';

-- 5 find out maximum hour bike rented seasons wise?

Select max(hour),seasons  From bike_new group by seasons;

-- 6 find the seasons wise highest no bike count?

Select max(rented_bike),seasons  From bike_new group by seasons;

-- 7 calculate avg no of bike rentals?

select avg(rented_bike) from bike_new;

-- 8 min bike rentals count?

Select min(rented_bike) as min_count ,max(rented_bike) as max_bike from bike_new;

-- 9 minimum maximum rented count in summer?

Select min(rented_bike) as min_count ,max(rented_bike) as max_bike from bike_new where seasons='summer';

-- 10 show the temprature less than 0 and count of bike?
Select temperature, rented_bike from bike_new where temperature <0;

select 
