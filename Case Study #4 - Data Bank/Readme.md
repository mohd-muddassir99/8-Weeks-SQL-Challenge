# 🥑Case Study #4 - Data Bank

<div align="center">
    <img src="https://8weeksqlchallenge.com/images/case-study-designs/4.png" width="600px" height="500px">
</div> 

## Introduction
There is a new innovation in the financial industry called Neo-Banks: new aged digital only banks without physical branches.

Danny thought that there should be some sort of intersection between these new age banks, cryptocurrency and the data world…so he decides to launch a new initiative - Data Bank!


## Problem Statement
Data Bank runs just like any other digital bank - but it isn’t only for banking activities, they also have the world’s most secure distributed data storage platform!

Customers are allocated cloud data storage limits which are directly linked to how much money they have in their accounts. There are a few interesting caveats that go with this business model, and this is where the Data Bank team need your help!

The management team at Data Bank want to increase their total customer base - but also need some help tracking just how much data storage their customers will need.

This case study is all about calculating metrics, growth and helping the business analyse their data in a smart way to better forecast and plan for their future developments!
### Relationship diagram
The Data Bank team have prepared a data model for this case study as well as a few example rows from the complete dataset below to get you familiar with their tables.

You can inspect the entity relationship diagram and example data below.

<div align="center">
    <img src="https://user-images.githubusercontent.com/81607668/130343339-8c9ff915-c88c-4942-9175-9999da78542c.png" width="700px" height="400px">
</div> 

### Source data
**Case Study #3 - Foodie-Fi** [Click here 🔗](https://8weeksqlchallenge.com/case-study-3/)
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

### C. Challenge Payment Question
The Foodie-Fi team wants you to create a new payments table for the year 2020 that includes amounts paid by each customer in the subscriptions table with the following requirements:

- monthly payments always occur on the same day of month as the original start_date of any monthly paid plan
- upgrades from basic to monthly or pro plans are reduced by the current paid amount in that month and start immediately
- upgrades from pro monthly to pro annual are paid at the end of the current billing period and also starts at the end of the month period
- once a customer churns they will no longer make payments

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
- Window Functions Such as LEAD() LAG() and RANK()
- CASE Statements
- As well as other functions, operators and clauses

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




