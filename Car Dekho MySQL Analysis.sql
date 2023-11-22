use cars;
-- Read Data --

select * from car_dekho;

-- Total Cars : To get a count of total records --
select count(*) from car_dekho;

-- The Manager asked the employee how many cars will be available in 2023? --
select count(*) from car_dekho
where year = 2023;

-- Then manager asked the employee how many cars are available in 2020,2021,2022? --
select count(*) from car_dekho where year = 2020; #74
select count(*) from car_dekho where year = 2021; #7
select count(*) from car_dekho where year = 2022; #7
-- group by --
select count(*) from car_dekho where year in (2020,2021,2022) group by year;

-- Client asked me to print the total of all cars by year. I don't see all the details --
select year,count(*) from car_dekho group by year;

-- Client asked car dealer agent How many Diesel cars will there be in 2020 -- 
select count(*) from car_dekho where year = 2020 and fuel = 'Diesel'; #20 

-- Client asked car dealer agent How many Petrol cars will there be in 2020 -- 
select count(*) from car_dekho where year = 2020 and fuel = 'Petrol'; #51

-- The manager told the employee to give a print of all cars(petrol,diesel,and cng) by all year -- 
select count(*) from car_dekho where fuel = 'Petrol' group by year;
select count(*) from car_dekho where fuel = 'Diesel' group by year;
select count(*) from car_dekho where fuel = 'CNG' group by year;

-- The Manager said that there were more than 100 cars in a given year, which year had more then 100 cars?
select year, count(*) from car_dekho group by year having  count(*)>100 ;

-- The Manager said to the employee All cars count details between 2015 and 2013, we need a complete list --
select count(*) from car_dekho where year between 2015 and 2023;

 -- The Manager said to the employee All cars details between 2015 and 2013, we need a complete list --
 select * from car_dekho where year between 2015 and 2023;
 
 -- END --
 