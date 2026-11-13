-- to activate any database use the following code
use maruti_dealer_db;

-- to pull data from a table use "select"
-- "*" indicates all columns
select * from models;
select model_name, segment from models;


-- write a code to pull all the columns from customers table

select * from customers;


-- where in sql is used to filter data

select * from customers where city = "Delhi";

-- find customers of delhi who are also Business Owners

select * from customers 
where city = "Delhi" and occupation = "Business Owner";

-- find customers of delhi or jaipur

select * from customers
where city = "Delhi" or city = "jaipur";

-- find customers who are not from delhi

select * from customers
where not city = "delhi";

select * from customers
where city <>  "Delhi";


-- find customer who are from Delhi, Jaipur, Pune, Patna

select * from customers
where city in ("jaipur","delhi","pune","patna");

-- aggregated functions - sum, count, max, min, avg

-- find total number of customers
-- primary key is a unique identifier of a row and it is never null
select count(customer_id) from customers;

-- how many car models are there in this maruti db
select count(model_id) from models;

select avg(age),
max(age), min(age) from customers;

-- group by 

select city, count(customer_id) from customers
group by city;

-- find the number of customer with respect to their income band

select income_band, count(customer_id) from customers
group by income_band;

-- find the number of customer with respect to their occupation & income band

select occupation, income_band, count(customer_id) from customers
group by occupation, income_band
order by occupation desc;
