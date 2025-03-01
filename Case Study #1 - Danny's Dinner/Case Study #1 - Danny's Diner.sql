CREATE DATABASE 8_week_sql_challenge;
use 8_week_sql_challenge;
CREATE SCHEMA dannys_diner;

CREATE TABLE sales (
  customer_id VARCHAR(1),
  order_date DATE,
  product_id INTEGER
);

INSERT INTO sales
  (customer_id, order_date, product_id)
VALUES
  ('A', '2021-01-01', '1'),
  ('A', '2021-01-01', '2'),
  ('A', '2021-01-07', '2'),
  ('A', '2021-01-10', '3'),
  ('A', '2021-01-11', '3'),
  ('A', '2021-01-11', '3'),
  ('B', '2021-01-01', '2'),
  ('B', '2021-01-02', '2'),
  ('B', '2021-01-04', '1'),
  ('B', '2021-01-11', '1'),
  ('B', '2021-01-16', '3'),
  ('B', '2021-02-01', '3'),
  ('C', '2021-01-01', '3'),
  ('C', '2021-01-01', '3'),
  ('C', '2021-01-07', '3');
 

CREATE TABLE menu (
  product_id INTEGER,
  product_name VARCHAR(5),
  price INTEGER
);

INSERT INTO menu
  (product_id, product_name, price)
VALUES
  ('1', 'sushi', '10'),
  ('2', 'curry', '15'),
  ('3', 'ramen', '12');
  

CREATE TABLE members (
  customer_id VARCHAR(1),
  join_date DATE
);

INSERT INTO members
  (customer_id, join_date)
VALUES
  ('A', '2021-01-07'),
  ('B', '2021-01-09');
  
  
  /* --------------------
   Case Study Questions
   --------------------*/
-- 1. What is the total amount each customer spent at the restaurant?
-- 2. How many days has each customer visited the restaurant?
-- 3. What was the first item from the menu purchased by each customer?
-- 4. What is the most purchased item on the menu and how many times was it purchased by all customers?
-- 5. Which item was the most popular for each customer?
-- 6. Which item was purchased first by the customer after they became a member?
-- 7. Which item was purchased just before the customer became a member?
-- 8. What is the total items and amount spent for each member before they became a member?
-- 9.  If each $1 spent equates to 10 points and sushi has a 2x points multiplier - how many points would each customer have?
-- 10. In the first week after a customer joins the program (including their join date) they earn 2x points on all items, not just sushi - how many points do customer A and B have at the end of January?
  
  
  -- ------------------------------------------------------------------------------------------------------------------------------------------------
SELECT * FROM members;
SELECT * FROM menu;
SELECT * FROM sales;
 -- 1. What is the total amount each customer spent at the restaurant?
select s.customer_id, sum(m.price) as Total_ from sales as s 
INNER JOIN menu as m ON s.product_id = m.product_id
GROUP BY s.customer_id
ORDER BY s.customer_id;

-- 2. How many days has each customer visited the restaurant?
SELECT customer_id, count(distinct order_date) as Visit_Days from sales 
group by customer_id
order by customer_id;

-- 3. What was the first item from the menu purchased by each customer?
with first_item as (
SELECT s.customer_id, s.order_date ,m.product_name,
DENSE_RANK() OVER (PARTITION BY s.customer_id ORDER BY s.order_date) as rank1 
from sales as s 
INNER JOIN menu as m ON s.product_id = m.product_id)
select customer_id, product_name from first_item 
where rank1  = 1 
group by customer_id, product_name
order by customer_id;

-- 4. What is the most purchased item on the menu and how many times was it purchased by all customers?
SELECT s.product_id, m.product_name, count(s.product_id) as Count_of_ItemOrders 
FROM sales as s INNER JOIN menu as m ON s.product_id = m.product_id
GROUP BY s.product_id, m.product_name;

-- 5. Which item was the most popular for each customer?
WITH most_popular AS (SELECT s.customer_id, m.product_name, count(m.product_id) as OrdersbyCustomer,
dense_rank() OVER (partition by s.customer_id order by count(s.product_id) desc )AS rank1
FROM sales as s INNER JOIN menu as m ON s.product_id = m.product_id
GROUP BY s.customer_id, m.product_name)
select customer_id, product_name from most_popular where rank1 = 1
group by customer_id, product_name;

-- 6. Which item was purchased first by the customer after they became a member?
WITH firstPurchase AS (SELECT m.customer_id, p.product_name, m.join_date, s.order_date,
row_number() over (partition by m.customer_id ORDER BY m.customer_id) AS row1
FROM members as m 
INNER JOIN sales as s ON m.customer_id = s.customer_id
INNER JOIN menu as p ON s.product_id = p.product_id
WHERE s.order_date > m.join_date )
SELECT customer_id, product_name, join_date, order_date FROM firstPurchase
where row1 = 1 
order by customer_id;
-- 7. Which item was purchased just before the customer became a member?
WITH BeforePurchase AS (SELECT m.customer_id, p.product_name, m.join_date, s.order_date,
row_number() over (partition by m.customer_id ORDER BY m.customer_id) AS row1
FROM members as m 
INNER JOIN sales as s ON m.customer_id = s.customer_id
INNER JOIN menu as p ON s.product_id = p.product_id
WHERE s.order_date < m.join_date )
SELECT customer_id, product_name, join_date, order_date FROM BeforePurchase
where row1 = 1 
order by customer_id;

-- 8. What is the total items and amount spent for each member before they became a member?
SELECT m.customer_id, count(s.product_id) as ItemCount, sum(p.price) as TotalAmount 
FROM sales as s 
INNER JOIN menu as p ON s.product_id = p.product_id
INNER JOIN members as m ON s.customer_id = m.customer_id 
WHERE order_date < join_date 
GROUP BY m.customer_id
ORDER BY m.customer_id;

-- 9.  If each $1 spent equates to 10 points and sushi has a 2x points multiplier - how many points would each customer have?
WITH points AS (SELECT s.customer_id, m.product_id,
	CASE
		WHEN m.product_id = 1 THEN price*20
        ELSE price*10
        END AS TotalPoints
FROM sales as s 
JOIN menu as m ON s.product_id = m.product_id)
SELECT customer_id, sum(TotalPoints) as PointsTotal from points
GROUP BY customer_id
ORDER BY customer_id;

-- 10. In the first week after a customer joins the program (including their join date) they earn 2x points on all items, not just sushi - how many points do customer A and B have at the end of January?
SELECT s.customer_id,
       SUM(IF(order_date BETWEEN join_date AND DATE_ADD(join_date, INTERVAL 6 DAY), price*10*2, 
       IF(product_name = 'sushi', price*10*2, price*10))) AS customer_points
FROM menu AS m
INNER JOIN sales AS s ON m.product_id = s.product_id
INNER JOIN members AS mem USING (customer_id)
WHERE order_date <='2021-01-31'
  AND order_date >=join_date
GROUP BY s.customer_id
ORDER BY s.customer_id;

-- BONUS QUESTIONS
SELECT s.customer_id, s.order_date, p.product_name, p.price,
CASE
	WHEN order_date >= join_date THEN 'Y'
    ELSE 'N'
    END AS member_status
FROM sales as s 
LEFT JOIN menu as p ON s.product_id = p.product_id
LEFT JOIN members as m ON s.customer_id = m.customer_id
ORDER BY s.customer_id, s.order_date;

-- RANK ALL THE MEMBERS AND PRODUCTS
WITH customer_rank AS (SELECT s.customer_id, s.order_date, p.product_name, p.price,
CASE
	WHEN order_date >= join_date THEN 'Y'
    ELSE 'N'
    END AS member_status
FROM sales as s 
LEFT JOIN menu as p ON s.product_id = p.product_id
LEFT JOIN members as m ON s.customer_id = m.customer_id
ORDER BY s.customer_id, s.order_date)
select cuStomer_id, order_date, product_name, price, member_status,
CASE
	WHEN member_status = 'N' THEN 'null'
    ELSE 
    rank() over(partition by customer_id, member_status order by order_date) 
END as RankMembers
from customer_rank;
