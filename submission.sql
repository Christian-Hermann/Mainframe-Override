-- 1.
SELECT * FROM forum_posts WHERE date >= '2048-04-01' AND date < '2048-05-01' 
AND content ILIKE '%emptystack%' AND content ILIKE '%dad%';
-- we know the dates of the inquiry and they mentioned emtysatck and dad
-- smart-money-44

-- 2.
SELECT * FROM forum_accounts 
WHERE username = 'smart-money-44';
-- last_name is 'Steele'  -- smart-money-44  Brad  Steele

-- 3. 
SELECT * FROM forum_accounts
WHERE last_name = 'Steele';
-- sharp-engine-57 | Andrew     | Steele
-- stinky-tofu-98  | Kevin      | Steele
-- smart-money-44  | Brad       | Steele

-- 4. 
SELECT * FROM emptystack_accounts
WHERE last_name = 'Steele';
-- triple-cart-38 | password456 | Andrew     | Steele
-- lance-main-11  | password789 | Lance      | Steele

-- 5. 

-- psql -f emptystack.sql
-- run psql
-- run \c mainframe_override
-- run \dt 

SELECT * FROM emptystack_messages LIMIT 5 
-- look at the structure and names

-- 6.
SELECT * FROM emptystack_messages
WHERE body ILIKE '%self-driving%'
OR body ILIKE '%taxi%';
--  LidWj | your-boss-99 | triple-cart-38 | Project TAXI | Deploy Project TAXI by end of week. We need this out ASAP.

-- 6. 
SELECT * FROM emptystack_projects
WHERE code = 'TAXI';
----------+------
-- DczE0v2b | TAXI


-- 7. 
SELECT * FROM emptystack_accounts
WHERE username = 'your-boss-99';
   username   |    password    | first_name | last_name 
--------------+----------------+------------+-----------
 your-boss-99 | notagaincarter | Skylar     | Singer


