-- 1 What are the column names?

select * 
from orders 
limit 10;

-- 2  How recent is this data?

select distinct order_date
from orders
order by order_date desc;

/* 3 Instead of selecting all the columns using *, 
 write a query that selects only the special_instructions column.
 Limit the result to 20 rows.*/

select special_instructions
from orders
limit 20;

/* 4 Can you edit the query so that we are only 
 returning the special instructions that are not empty? */

select special_instructions
from orders
where special_instructions is not null

/* 5 Let’s go even further and sort the instructions 
 in alphabetical order (A-Z). */

select special_instructions
from orders
where special_instructions is not null
order by special_instructions asc

-- 6 Let’s search for special instructions that have the word ‘sauce’.

select special_instructions
from orders
where special_instructions like '%sauce%';

-- 7 Let’s search for special instructions that have the word ‘door’.

select special_instructions
from orders
where special_instructions like '%door%';

-- 8 Let’s search for special instructions that have the word ‘box’.

select special_instructions
from orders
where special_instructions like '%box%';

-- 9 Instead of just returning the special instructions, also return their order ids.

select id,
   special_instructions
from orders
where special_instructions like '%box%';

/* 10 Instead of just returning the special instructions, also return their order ids.
 For more readability:
 Rename id as ‘#’
 Rename special_instructions as ‘Notes’ */


select id as '#',
   special_instructions as 'Notes'
from orders
where special_instructions like '%box%';