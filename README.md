# Ola_Ride_Analytics

# Overview

This project analyzes 71,000+ Ola ride bookings to uncover insights into customer behavior, vehicle type preferences, booking trends, and operational performance.
It follows a complete data analytics workflow — from data cleaning and SQL-based analysis to dashboard building and reporting — aimed at supporting strategic business decisions.

# Dataset

Source: Transformed from Uncleaned_dataset.xlsx to Cleaned_Dataset.xlsx 

Rows: 71,202 

Columns: 20

# Key Features:

-Booking details: date, time, booking_id, customer_id, vehicle_type, ride_distance, booking_value, payment_method

-Ride status: booking_status, canceled/incomplete rides and reasons

-Ratings: driver_rating, customer_rating

-Other info: pickup/drop locations, v_tat, c_tat

Notes:

-Missing values in rating and TAT columns for canceled or incomplete rides

-Image URLs in vehicle_images removed for simplicity

# Tools & Technologies

Tool	Purpose

1.Excel / Google Sheets-Initial data loading and cleaning

2.PostgreSQL-based data analysis and query execution

3.Power BI-Interactive dashboard and visualizations

4.Gamma App-Final presentation and storytelling report

# Project Steps

# 1. Data Cleaning

-Loaded raw Excel file into spreadsheet software

-Removed redundant columns (canceled_rides_by_customer, canceled_rides_by_driver)

-Replaced unnecessary or broken links in vehicle_images

-Exported cleaned data as Bookings_clean0.1.xlsx

# 2. Data Loading

-Imported the cleaned dataset into PostgreSQL

-Created table ola_bookings for SQL operations

# 3. SQL Analysis

-Key queries included:

-Successful bookings extraction

-Average ride distance per vehicle type

-Top 5 customers by booking frequency

-Cancellations by customers and drivers

-Rating analysis by vehicle type

-Total booking value for successful rides

# 4. Visualization

Built a Power BI Dashboard highlighting booking patterns, cancellations, and customer trends

Created interactive visuals (bar charts, KPIs, and heatmaps)

# 5. Reporting

Compiled insights and business recommendations into a Gamma App presentation and PDF report

# Dashboard Highlights

The Power BI dashboard includes:

-Total bookings and success rate overview

-Cancellations breakdown by reason and type

-Customer and driver rating distribution

-Top-performing vehicle types and routes

-Revenue insights by payment method

# Key Results & Insights

-Prime Sedan and Bike rides showed the highest demand

-UPI payments dominated successful transactions

-Most cancellations stemmed from “change of plans” or driver issues

-Top 5 customers accounted for a major share of repeat bookings

-Opportunities identified for driver training, customer loyalty programs, and fleet optimization

# How to Run This Project

1.Clone this repository-
git clone https://github.com/Patilrohan0099/ola_data_analytics.git
cd ola_data_analytics

2.Load the dataset
-Open Bookings_clean0.1.xlsx in Excel or upload to PostgreSQL.

3.Run SQL queries-
Use the .sql file or queries provided in the documentation on your PostgreSQL Server.

4.View the dashboard-
Open the .pbix file in Power BI Desktop to explore visuals interactively.

5.Read the report-
Refer to Ola Ride Analytics Report.pdf for findings and recommendations.
