create schema cars;
use cars;


-- READ DATA--
select * from car_dekho;

-- Total cars:To get a count of total records--
select Count(*) from car_dekho;

-- How many cars available in 2023--
select count(*) from car_dekho
where year=2023;

-- How many cars available in 2020,21,22 using group by--
select count(*) from car_dekho
where year in (2020,2021, 2022) group by year;

-- client asked me to print the total cars by years --
select year,count(*) from car_dekho
group by year;

-- how many diesel cars will there be in 2020--
select count(*) from car_dekho 
where fuel="Diesel" and year=2020;

-- how many petrol cars will there be in 2020--
select count(*) from car_dekho 
where fuel="Petrol" and year=2020;

-- print all the fuel cars (petrol,diesel,cng)--
select year,count(*) from car_dekho 
where fuel="Petrol" group by year;

select year,count(*) from car_dekho 
where fuel="Diesel" group by year;

select year,count(*) from car_dekho 
where fuel="CNG" group by year;

-- there more than 100 cars in a given year,which year had more than 100 cars--
select year,count(*) from car_dekho
group by year having count(*)>100; 

-- there less than 50 cars in a given year--
select year,count(*) from car_dekho
group by year having count(*)<50; 

-- count all cars details between 2015 to 2023 --
select count(*) from car_dekho where year between 2015 and 2023;

-- all cars details between 2015 to 2023 --
select * from car_dekho where year between 2015 and 2023;

-- END--