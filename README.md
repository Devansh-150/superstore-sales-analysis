# Superstore Sales Analysis

A beginner data analysis project using the Superstore Sales dataset.

I built this project to practice working with SQL and Power BI, and to get more comfortable with looking at sales data from different angles.

## Project Overview

The main goal was to explore sales across:

- Time
- Regions, states and cities
- Categories and sub-categories
- Products
- Customers
- Shipping methods

I used SQL for some of the initial analysis and Power BI to build an interactive dashboard.

## Tools Used

- MySQL
- Microsoft Power BI
- CSV

## Dataset

The project uses the Superstore Sales dataset available on Kaggle.

The dataset contains information such as:

- Order and shipping dates
- Order ID and Customer ID
- Customer name
- Region, state, city and postal code
- Category and sub-category
- Product ID and product name
- Ship mode
- Sales

Since the dataset mainly focuses on sales, the analysis is centered around sales performance rather than profit, discount or quantity analysis.

## What I Looked At

### Sales Over Time

I looked at yearly, quarterly and monthly sales to understand how sales changed over the period covered by the dataset.

### Geographic Sales

I compared sales across:

- Regions
- States
- Cities

### Product Performance

I explored the products and sub-categories generating the most sales.

### Customer Segmentation

I looked at sales across different customer segments.

### Shipping

I calculated the average number of days between order date and shipping date for each shipping mode.

### Other Metrics

I also calculated:

- Total customers
- Total products
- Average Order Value (AOV)
- Top customers by sales

## Power BI Dashboard

### Overview

<img width="785" height="448" alt="overview" src="https://github.com/user-attachments/assets/14b4ac9c-4220-42d6-9ca8-733871e20c72" />


### Sales by State

<img width="787" height="441" alt="sales by state" src="https://github.com/user-attachments/assets/da278fb5-195d-461d-8371-94cad35c25df" />


### Top Products(sub-categories) and Cities

<img width="791" height="449" alt="top selling sub categories and cities" src="https://github.com/user-attachments/assets/987582de-a2c1-48d7-9f08-302112dcf775" />


### Customer and Region Segmentation

<img width="787" height="443" alt="segmentation" src="https://github.com/user-attachments/assets/e8e1b357-7488-49db-9897-5726c6bd3667" />


### Sales Timeline

<img width="786" height="445" alt="sales timeline" src="https://github.com/user-attachments/assets/a7ac14e6-a351-4d8d-9dae-5829558b673b" />


The dashboard includes filters for date, region and category, allowing the views to be explored interactively.

## SQL Analysis

The SQL queries used for the project are available in the file 

Some of the questions I explored were:

- Which states generate the most sales?
- Which cities have sales above $100,000?
- Which categories and sub-categories generate the most sales?
- Who are the top customers by sales?
- Which products generate the most sales?
- How many customers and products are in the dataset?
- How long does each shipping mode take on average?
- What is the average order value?

## A Few Things I Found

- California had the highest sales among the states in the analysis.
- New York was the second-highest state by sales.
- Phones and Chairs were among the highest-selling product sub-categories/products by sales.
- The Consumer segment accounted for the largest share of sales.
- Sales varied considerably from month to month, with some noticeable peaks and drops across the period.


## Notes
This is a learning project, so there are definitely things I would approach differently in a future project. The main focus here was getting comfortable with the complete process of taking a dataset, analyzing it and presenting the results.

## Project Files

```text
├── powerbi/
│   └── Superstore_Sales_Analysis.pbix
│
├── sql/
│   └── superstore_analysis.sql
│
├── data/
│   └── cleaned_superstore.csv
