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
    <img src="https://user-images.githubusercontent.com/81607668/129744449-37b3229b-80b2-4cce-b8e0-707d7f48dcec.png" width="700px" height="400px">
</div> 

### Source data
**Case Study #2 - Foodie-Fi** [Click here 🔗](https://8weeksqlchallenge.com/case-study-3/)
## Task questions
### A. Customer Journey
Based off the 8 sample customers provided in the sample from the subscriptions table, write a brief description about each customer’s onboarding journey.

Try to keep it as short as possible - you may also want to run some sort of join to make your explanations a bit easier!

### B. Data Analysis Questions
- How many customers has Foodie-Fi ever had?
- What is the monthly distribution of trial plan start_date values for our dataset - use the start of the month as the group by value
- What plan start_date values occur after the year 2020 for our dataset? Show the breakdown by count of events for each plan_name
- What is the customer count and percentage of customers who have churned rounded to 1 decimal place?
- How many customers have churned straight after their initial free trial - what percentage is this rounded to the nearest whole number?
- What is the number and percentage of customer plans after their initial free trial?
- What is the customer count and percentage breakdown of all 5 plan_name values at 2020-12-31?
- How many customers have upgraded to an annual plan in 2020?
- How many days on average does it take for a customer to an annual plan from the day they join Foodie-Fi?
- Can you further breakdown this average value into 30 day periods (i.e. 0-30 days, 31-60 days etc)
- How many customers downgraded from a pro monthly to a basic monthly plan in 2020?

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
    <a href="https://github.com/mohd-muddassir99/8-Weeks-SQL-Challenge/blob/478e37394f6f93f527c9164b94d137317016271d/Case%20Study%20%233%20-%20Foodie%20Fi/Case%20Study%20%233%20-%20Foodie%20Fi.sql">
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



