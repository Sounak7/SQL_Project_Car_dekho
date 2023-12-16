create schema cars;
use cars;
-- READ DATA --
select * from car_dekho;
-- TOTAL CARS- TO GET A COUNT OF TOTAL RECORDS --
select count(*) from car_dekho;
-- HOW MANY CARS WILL BE AVAILABLE IN 2023? --
select count(*) from car_dekho
where year=2023;
-- HOW MANY CARS WILL BE AVAILABLE 2020,2021,2022? --
select count(*) from car_dekho
where year in (2020,2021,2023)
group by year;
-- PRINT THE TOTAL OF CARS BY YEAR --
select year, count(*) from car_dekho
group by year;
-- HOW MANY DIESEL CARS WILL BE THERE IN 2020? --
select count(*) from car_dekho
where year = 2020 and fuel = "Diesel";
-- HOW MANY PETROL CARS WILL BE THERE IN 2020? --
select count(*) from car_dekho
where year = 2020 and fuel = "Petrol";
-- PRINT ALL THE FUEL CARS (PETROL,DIESEL AND CNG) COME BY ALL YEAR --
select year,count(*) from car_dekho
where fuel = "Petrol"
group by year;
select year,count(*) from car_dekho
where fuel = "Diesel"
group by year;
select year,count(*) from car_dekho
where fuel = "CNG"
group by year;
-- WHICH YEAR HAS MORE THAN 100 CARS --
select year, count(*) from car_dekho
group by year
having count(*)>100;
-- ALL CARS COUNT DETAILS BETWEEN 2015 AND 2023 --
select count(*) from car_dekho
where year between 2015 and 2023;
-- ALL CAR DETAILS BETWEEN 2015 AND 2023 --
select * from car_dekho
where year between 2015 and 2023;

-- END --
