# Case Study #2 - Pizza Runner

<div align="center">
    <img src="https://8weeksqlchallenge.com/images/case-study-designs/2.png" width="600px" height="500px">
</div> 

## Introduction
Did you know that over 115 million kilograms of pizza is consumed daily worldwide??? (Well according to Wikipedia anyway…)

Danny was scrolling through his Instagram feed when something really caught his eye - “80s Retro Styling and Pizza Is The Future!”

## Problem Statement
Danny was sold on the idea, but he knew that pizza alone was not going to help him get seed funding to expand his new Pizza Empire - so he had one more genius idea to combine with it - he was going to Uberize it - and so Pizza Runner was launched!

Danny started by recruiting “runners” to deliver fresh pizza from Pizza Runner Headquarters (otherwise known as Danny’s house) and also maxed out his credit card to pay freelance developers to build a mobile app to accept orders from customers.

You can inspect the entity relationship diagram and example data below.
### Relationship diagram
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
        Meat Lovers
        Meat Lovers - Exclude Beef
        Meat Lovers - Extra Bacon
        Meat Lovers - Exclude Cheese, Bacon - Extra Mushroom, Peppers
Generate an alphabetically ordered comma separated ingredient list for each pizza order from the customer_orders table and add a 2x in front of any relevant ingredients
For example: "Meat Lovers: 2xBacon, Beef, ... , Salami"
What is the total quantity of each ingredient used in all delivered pizzas sorted by most frequent first?
D. Pricing and Ratings
If a Meat Lovers pizza costs $12 and Vegetarian costs $10 and there were no charges for changes - how much money has Pizza Runner made so far if there are no delivery fees?
What if there was an additional $1 charge for any pizza extras?
Add cheese is $1 extra
The Pizza Runner team now wants to add an additional ratings system that allows customers to rate their runner, how would you design an additional table for this new dataset - generate a schema for this new table and insert your own data for ratings for each successful customer order between 1 to 5.
Using your newly generated table - can you join all of the information together to form a table which has the following information for successful deliveries?
customer_id
order_id
runner_id
rating
order_time
pickup_time
Time between order and pickup
Delivery duration
Average speed
Total number of pizzas
If a Meat Lovers pizza was $12 and Vegetarian $10 fixed prices with no cost for extras and each runner is paid $0.30 per kilometre traveled - how much money does Pizza Runner have left over after these deliveries?
E. Bonus Questions
If Danny wants to expand his range of pizzas - how would this impact the existing data design? Write an INSERT statement to demonstrate what would happen if a new Supreme pizza with all the toppings was added to the Pizza Runner menu?
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


