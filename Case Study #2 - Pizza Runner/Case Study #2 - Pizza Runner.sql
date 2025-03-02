CREATE DATABASE 8_week2_pizza_runner;
use 8_week2_pizza_runner;
DROP TABLE IF EXISTS runners;
CREATE TABLE runners (
  runner_id INTEGER,
  registration_date DATE
);
INSERT INTO runners
  (runner_id, registration_date)
VALUES
  (1, '2021-01-01'),
  (2, '2021-01-03'),
  (3, '2021-01-08'),
  (4, '2021-01-15');


DROP TABLE IF EXISTS customer_orders;
CREATE TABLE customer_orders (
  order_id INTEGER,
  customer_id INTEGER,
  pizza_id INTEGER,
  exclusions VARCHAR(4),
  extras VARCHAR(4),
  order_time TIMESTAMP
);

INSERT INTO customer_orders
  (order_id, customer_id, pizza_id, exclusions, extras, order_time)
VALUES
  ('1', '101', '1', '', '', '2020-01-01 18:05:02'),
  ('2', '101', '1', '', '', '2020-01-01 19:00:52'),
  ('3', '102', '1', '', '', '2020-01-02 23:51:23'),
  ('3', '102', '2', '', NULL, '2020-01-02 23:51:23'),
  ('4', '103', '1', '4', '', '2020-01-04 13:23:46'),
  ('4', '103', '1', '4', '', '2020-01-04 13:23:46'),
  ('4', '103', '2', '4', '', '2020-01-04 13:23:46'),
  ('5', '104', '1', 'null', '1', '2020-01-08 21:00:29'),
  ('6', '101', '2', 'null', 'null', '2020-01-08 21:03:13'),
  ('7', '105', '2', 'null', '1', '2020-01-08 21:20:29'),
  ('8', '102', '1', 'null', 'null', '2020-01-09 23:54:33'),
  ('9', '103', '1', '4', '1, 5', '2020-01-10 11:22:59'),
  ('10', '104', '1', 'null', 'null', '2020-01-11 18:34:49'),
  ('10', '104', '1', '2, 6', '1, 4', '2020-01-11 18:34:49');


DROP TABLE IF EXISTS runner_orders;
CREATE TABLE runner_orders (
  order_id INTEGER,
  runner_id INTEGER,
  pickup_time VARCHAR(19),
  distance VARCHAR(7),
  duration VARCHAR(10),
  cancellation VARCHAR(23)
);

INSERT INTO runner_orders
  (order_id, runner_id, pickup_time, distance, duration, cancellation)
VALUES
  ('1', '1', '2020-01-01 18:15:34', '20km', '32 minutes', ''),
  ('2', '1', '2020-01-01 19:10:54', '20km', '27 minutes', ''),
  ('3', '1', '2020-01-03 00:12:37', '13.4km', '20 mins', NULL),
  ('4', '2', '2020-01-04 13:53:03', '23.4', '40', NULL),
  ('5', '3', '2020-01-08 21:10:57', '10', '15', NULL),
  ('6', '3', 'null', 'null', 'null', 'Restaurant Cancellation'),
  ('7', '2', '2020-01-08 21:30:45', '25km', '25mins', 'null'),
  ('8', '2', '2020-01-10 00:15:02', '23.4 km', '15 minute', 'null'),
  ('9', '2', 'null', 'null', 'null', 'Customer Cancellation'),
  ('10', '1', '2020-01-11 18:50:20', '10km', '10minutes', 'null');


DROP TABLE IF EXISTS pizza_names;
CREATE TABLE pizza_names (
  pizza_id INTEGER,
  pizza_name TEXT
);
INSERT INTO pizza_names
  (pizza_id, pizza_name)
VALUES
  (1, 'Meatlovers'),
  (2, 'Vegetarian');


DROP TABLE IF EXISTS pizza_recipes;
CREATE TABLE pizza_recipes (
  pizza_id INTEGER,
  toppings TEXT
);
INSERT INTO pizza_recipes
  (pizza_id, toppings)
VALUES
  (1, '1, 2, 3, 4, 5, 6, 8, 10'),
  (2, '4, 6, 7, 9, 11, 12');


DROP TABLE IF EXISTS pizza_toppings;
CREATE TABLE pizza_toppings (
  topping_id INTEGER,
  topping_name TEXT
);
INSERT INTO pizza_toppings
  (topping_id, topping_name)
VALUES
  (1, 'Bacon'),
  (2, 'BBQ Sauce'),
  (3, 'Beef'),
  (4, 'Cheese'),
  (5, 'Chicken'),
  (6, 'Mushrooms'),
  (7, 'Onions'),
  (8, 'Pepperoni'),
  (9, 'Peppers'),
  (10, 'Salami'),
  (11, 'Tomatoes'),
  (12, 'Tomato Sauce');
 
 -- ------------------------------------------------------------------------------------------------------------------------
--  A. Pizza Metrics
-- How many pizzas were ordered?
-- How many unique customer orders were made?
-- How many successful orders were delivered by each runner?
-- How many of each type of pizza was delivered?
-- How many Vegetarian and Meatlovers were ordered by each customer?
-- What was the maximum number of pizzas delivered in a single order?
-- For each customer, how many delivered pizzas had at least 1 change and how many had no changes?
-- How many pizzas were delivered that had both exclusions and extras?
-- What was the total volume of pizzas ordered for each hour of the day?
-- What was the volume of orders for each day of the week?

SELECT * FROM cust_orders_temp;
SELECT * FROM pizza_names;
SELECT * FROM pizza_recipes;
SELECT * FROM pizza_toppings;
SELECT * FROM runners;
SELECT * FROM runner_orders_temp;

-- CLEAN NULL OF NULL VALUES from CUSTOMER ORDERS	
CREATE TABLE IF NOT EXISTS cust_orders_temp AS 
select order_id, customer_id, pizza_id,
CASE	
	WHEN exclusions is null or exclusions like 'null' THEN ' ' 
    else exclusions
end as exclusions,
CASE
	WHEN extras is null or extras like 'null' THEN ' ' 
    else extras
end as extras, order_time
FROM customer_orders;
select * from cust_orders_temp;

--  CLEAN RUNNER ORDERS TABLE
CREATE TABLE IF NOT EXISTS runner_orders_temp AS
SELECT order_id, runner_id,
CASE
	WHEN pickup_time is null or pickup_time like 'null' then ' ' 
    else pickup_time
end as pickup_time,
CASE
	WHEN distance like 'null' THEN ' ' 
    WHEN distance like '%km' THEN TRIM('km' from distance)
    else distance
end as distance,
CASE
	WHEN duration like 'null' THEN ' ' 
    WHEN duration like '%minutes' THEN TRIM('minutes' from duration)
	WHEN duration like '%mins' THEN TRIM('mins' from duration)
	WHEN duration like '%minute' THEN TRIM('minute' from duration)
    ELSE duration
end as duration,
CASE
	WHEN cancellation is null or cancellation like 'null' THEN ' ' 
    else cancellation
end as cancellation
FROM runner_orders;
select * from runner_orders_temp;

-- --  A. Pizza Metrics
-- How many pizzas were ordered?
select count(order_id) from cust_orders_temp;

-- How many unique customer orders were made?
select count(distinct order_id) as unique_cust_orders from cust_orders_temp;

-- How many successful orders were delivered by each runner?
select runner_id, count(order_id) as successful_orders from runner_orders_temp
where cancellation = ' '
group by runner_id
order by runner_id;

-- How many of each type of pizza was delivered?
SELECT p.pizza_id, p.pizza_name, count(r.order_id) as Total_Orderd_Pizza FROM pizza_names as p
JOIN cust_orders_temp as c ON p.pizza_id = c.pizza_id
JOIN runner_orders_temp as r ON c.order_id = r.order_id 
where distance != 0
GROUP BY p.pizza_id, p.pizza_name
order by p.pizza_id;

-- How many Vegetarian and Meatlovers were ordered by each customer?
SELECT c.customer_id, p.pizza_name, count(p.pizza_name) from cust_orders_temp as c
JOIN pizza_names as p ON c.pizza_id = p.pizza_id
GROUP BY c.customer_id ,p.pizza_name
ORDER BY c.customer_id;

-- What was the maximum number of pizzas delivered in a single order?
WITH pizza_count_cte AS (
SELECT c.order_id, COUNT(c.pizza_id) AS pizza_per_order FROM cust_orders_temp AS c
JOIN runner_orders_temp AS r
ON c.order_id = r.order_id
WHERE r.distance != 0
GROUP BY c.order_id )

SELECT order_id,MAX(pizza_per_order) AS pizza_count
FROM pizza_count_cte
GROUP BY  order_id;

-- For each customer, how many delivered pizzas had at least 1 change and how many had no changes?
SELECT c.customer_id, sum(
CASE
	WHEN c.exclusions <> ' ' or c.extras <> ' ' THEN 1
    ELSE 0
    END) as 1_change,
SUM(
CASE
	WHEN c.exclusions = ' ' AND c.extras = ' ' THEN 1
    ELSE 0
    END) as no_change
FROM cust_orders_temp as c
JOIN runner_orders_temp as r ON c.order_id = r.order_id
WHERE r.distance != 0
GROUP BY c.customer_id
ORDER BY c.customer_id;

-- How many pizzas were delivered that had both exclusions and extras?
SELECT count(pizza_id) as Delivered_Count 
FROM cust_orders_temp
where  exclusions and extras is not null ;

-- What was the total volume of pizzas ordered for each hour of the day?
SELECT hour(order_time) as Hours, count(order_id) as Total_order 
from cust_orders_temp
GROUP BY Hours
ORDER BY Total_order;

-- What was the volume of orders for each day of the week?
SELECT Dayname(order_time) as Day_of_Week, count(order_id) as Total_order 
from cust_orders_temp
GROUP BY Day_of_Week
ORDER BY Total_order desc;

-- --  B. Pizza Metrics
-- How many runners signed up for each 1 week period? (i.e. week starts 2021-01-01)
-- What was the average time in minutes it took for each runner to arrive at the Pizza Runner HQ to pickup the order?
-- Is there any relationship between the number of pizzas and how long the order takes to prepare?
-- What was the average distance travelled for each customer?
-- What was the difference between the longest and shortest delivery times for all orders?
-- What was the average speed for each runner for each delivery and do you notice any trend for these values?
-- What is the successful delivery percentage for each runner?

SELECT * FROM pizza_names;
SELECT * FROM pizza_recipes;
SELECT * FROM pizza_toppings;
SELECT * FROM runners;
SELECT * FROM runner_orders_temp;
SELECT * FROM cust_orders_temp;

-- How many runners signed up for each 1 week period? (i.e. week starts 2021-01-01)
SELECT WEEK(registration_date) as Registration_week,
count(runner_id) as TotalRegistration FROM runners 
GROUP BY 1 
ORDER BY 1;

-- What was the average time in minutes it took for each runner to arrive at the Pizza Runner HQ to pickup the order?
WITH time_pickup_cte AS ( 
SELECT r.runner_id, c.order_id, c.order_time, r.pickup_time,
timestampdiff(MINUTE, c.order_time, r.pickup_time) as runner_pickup_time
FROM runner_orders_temp as r
JOIN cust_orders_temp as c ON c.order_id = r.order_id
WHERE distance != 0
group by r.runner_id,c.order_id, c.order_time, r.pickup_time )
SELECT runner_id, round(avg(runner_pickup_time),2) as AvgPickup_Time
FROM time_pickup_cte group by runner_id;

-- Is there any relationship between the number of pizzas and how long the order takes to prepare?

-- What was the average distance travelled for each customer?
SELECT c.customer_id, round(AVG(r.distance),2) as Avg_Distance
from runner_orders_temp as r
INNER JOIN cust_orders_temp as c ON r.order_id = c.order_id
WHERE r.duration != 0
group by c.customer_id;

-- What was the difference between the longest and shortest delivery times for all orders?
select min(duration) as MinimunDuration,max(duration) as MaximumDuration,
(max(duration) - min(duration)) as DeliveryTime_Difference
FROM runner_orders_temp
where duration is not null;

-- What was the average speed for each runner for each delivery and do you notice any trend for these values?

-- What is the successful delivery percentage for each runner?
select runner_id, 
count(pickup_time) as DeliverOrders,
count(*) as TotalOrders,
ROUND(100 * SUM(
    CASE WHEN distance = 0 THEN 0
    ELSE 1 END) / COUNT(*), 0) AS success_perc
-- round(100 * count(pickup_time) / count(*)) as Percentage
from runner_orders_temp
where distance is not null
group by runner_id;

SELECT runner_id, 
ROUND(100 * SUM(
    CASE WHEN distance = 0 THEN 0
    ELSE 1 END) / COUNT(*), 0) AS success_perc
FROM runner_orders_temp
GROUP BY runner_id;
