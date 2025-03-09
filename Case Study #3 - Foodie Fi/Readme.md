# Case Study #3 - Foodie-Fi

<div align="center">
    <img src="https://8weeksqlchallenge.com/images/case-study-designs/3.png" width="600px" height="500px">
</div> 

## Introduction
Subscription based businesses are super popular and Danny realised that there was a large gap in the market - he wanted to create a new streaming service that only had food related content - something like Netflix but with only cooking shows!


## Problem Statement
Danny finds a few smart friends to launch his new startup Foodie-Fi in 2020 and started selling monthly and annual subscriptions, giving their customers unlimited on-demand access to exclusive food videos from around the world!

Danny created Foodie-Fi with a data driven mindset and wanted to ensure all future investment decisions and new features were decided using data. This case study focuses on using subscription style digital data to answer important business questions.
### Relationship diagram
Danny has shared the data design for Foodie-Fi and also short descriptions on each of the database tables - our case study focuses on only 2 tables but there will be a challenge to create a new table for the Foodie-Fi team.

All datasets exist within the foodie_fi database schema - be sure to include this reference within your SQL scripts as you start exploring the data and answering the case study questions.

You can inspect the entity relationship diagram and example data below.

<div align="center">
    <img src="https://github.com/manaswikamila05/8-Week-SQL-Challenge/raw/main/Case%20Study%20%23%202%20-%20Pizza%20Runner/ERD.jpg" width="700px" height="400px">
</div> 

### Source data
**Case Study #2 - Pizza Runner** [Click here 🔗](https://8weeksqlchallenge.com/case-study-2/)
## Task questions
### A. Pizza Metrics
- How many pizzas were ordered?
- How many unique customer orders were made?
- How many successful orders were delivered by each runner?
- How many of each type of pizza was delivered?
- How many Vegetarian and Meatlovers were ordered by each customer?
- What was the maximum number of pizzas delivered in a single order?
- For each customer, how many delivered pizzas had at least 1 change and how many had no changes?
- How many pizzas were delivered that had both exclusions and extras?
- What was the total volume of pizzas ordered for each hour of the day?
- What was the volume of orders for each day of the week?

### B. Runner and Customer Experience
- How many runners signed up for each 1 week period? (i.e. week starts 2021-01-01)
- What was the average time in minutes it took for each runner to arrive at the Pizza Runner HQ to pickup the order?
- Is there any relationship between the number of pizzas and how long the order takes to prepare?
- What was the average distance travelled for each customer?
- What was the difference between the longest and shortest delivery times for all orders?
- What was the average speed for each runner for each delivery and do you notice any trend for these values?
- What is the successful delivery percentage for each runner?

### C. Ingredient Optimisation
- What are the standard ingredients for each pizza?
- What was the most commonly added extra?
- What was the most common exclusion?
- Generate an order item for each record in the customers_orders table in the format of one of the following:
- - Meat Lovers
- - Meat Lovers - Exclude Beef
- - Meat Lovers - Extra Bacon
- - Meat Lovers - Exclude Cheese, Bacon - Extra Mushroom, Peppers
- Generate an alphabetically ordered comma separated ingredient list for each pizza order from the customer_orders table and add a 2x in front of any relevant ingredients
For example: "Meat Lovers: 2xBacon, Beef, ... , Salami"
- What is the total quantity of each ingredient used in all delivered pizzas sorted by most frequent first?

## View & Download Solution (MySQL File):

<p align="center">
    <a href="https://github.com/mohd-muddassir99/8-Weeks-SQL-Challenge/blob/f018483827f8ac5d40b328fe2748f54d9d98a175/Case%20Study%20%232%20-%20Pizza%20Runner/Case%20Study%20%232%20-%20Pizza%20Runner.sql">
        <img src="https://miro.medium.com/v2/resize:fit:900/0*hM4PQP9yoePYv-RB.png" width="70px" height="90px" alt="Access Dataset"><br>
        View
    </a>
</p> <br>

## Method applied 
- JOINS
- Aggregate Functions
- Window Functions
- CTE's
- Subqueries

💡 Let’s Connect!!
If you have any suggestions or want to collaborate on SQL projects, feel free to reach out! 🚀

 --- 
 
<div align="center">
<p align="center">
    Thanks for visiting my GitHub! If you find my work fascinating, don't forget to ⭐️ your favorite projects. 
    
🔗 Connect with me on LinkedIn 
 
  <p align="center">
    <a href="https://www.linkedin.com/in/mohd-muddassir99/">
        <img src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/ca/LinkedIn_logo_initials.png/640px-LinkedIn_logo_initials.png" width="65px" alt="Access Dataset"><br>
        LinkedIn
    </a>

   | **Mohd Muddassir** | </a> <br>
Don't forget to follow and star ⭐ the repository if you find it valuable.
</div>



