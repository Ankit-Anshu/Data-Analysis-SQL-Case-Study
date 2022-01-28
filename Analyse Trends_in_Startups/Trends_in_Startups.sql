select * 
from startups;

-- Calculate the total number of companies in the table.
select count(*)
from startups;

-- We want to know the total value of all companies in this table.
select sum(valuation)
from startups;

-- What is the highest amount raised by a startup?
-- Return the maximum amount of money raised.
select max(raised)
from startups;

-- maximum amount of money raised, during ‘Seed’ stage.
select max(raised)
from startups
where stage ='Seed';

-- In what year was the oldest company on the list founded?
select min(founded) as 'year'
from startups;

-- Let's find out the valuations among different sectors:

-- The average valuation
select avg(valuation)
from startups;

-- The average valuation, in each category
select category, avg(valuation)
from startups
group by category;

-- The average valuation, in each category.
-- Round the averages to two decimal places
select category, round(avg(valuation),2) as "avg valuation"
from startups
group by category;

-- Return the average valuation, in each category.
-- Round the averages to two decimal places.
-- Lastly, order the list from highest averages to lowest.

select category, round(avg(valuation), 2) as "avg valuation"
from startups
group by category
order by [avg valuation] desc;

-- What are the most competitive markets?

-- First, return the name of each category
-- with the total number of companies that belong to it.

select category, count(*) as 'count'
from startups
group by category;

-- Filter the result to only include categories that have more than three companies in them.

select category, count(*) as 'count'
from startups
group by category 
having count(*) > 3
order by 2 desc;

-- Let's see if there's a difference
-- in startups sizes among different locations:

-- What is the average size of a startup in each location?

select location,avg(employees) as [Avg no of employees]
from startups
group by location
order by 2 desc;

-- What is the average size of a startup in each location, with average sizes above 500?

select location, avg(employees) as [Avg no of employees]
from startups
group by location
having avg(employees) > 500
order by 2 desc;



