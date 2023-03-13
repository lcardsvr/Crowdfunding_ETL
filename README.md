# Crowdfunding_ETL

For the ETL mini project to build ETL pipeline  Python, Pandas, and Python dictionary methods were used to extract and transform the data. After the data was transformed, four CSV files were created. These CSV files were subsequently used to create an ERD, a table schema and uploaded into a Postgres database.

## Instructions
The work is divided into the following subsections:

1. Create the Category and Subcategory DataFrames
2. Create the Campaign DataFrame
3. Create the Contacts DataFrame
4. Create the Crowdfunding Database

## Category and Subcategory DataFrames creation

The file crowdfunding.xlsx available under https://github.com/lcardsvr/Crowdfunding_ETL/tree/main/Resources was used for the work. Files category.csv and subcategory.csv were created under the same folder as per requirements.

## Create the Campaign DataFrame

The manipulation of the campaign dataframe was performed as outlined in the notebook https://github.com/lcardsvr/Crowdfunding_ETL/blob/main/ETL_Mini_Project_LCardenas.ipynb.The output was the file campaign.csv.

## Create the Campaign DataFrame

To create the Contacts information, the file contacts.xlsx available under https://github.com/lcardsvr/Crowdfunding_ETL/tree/main/Resources was used. JSON loading and Pandas as outlined in the notebook https://github.com/lcardsvr/Crowdfunding_ETL/blob/main/ETL_Mini_Project_LCardenas.ipynb.The file campaign.The result was file contacts.csv.

## Create the Crowdfunding Database

Finally with the 4 csv files the ERD below was devised.

![image](/Info/QuickDBD_CrowdFunding_DB_Diagram.png)

The file crowdfunding_db_schema.sql was used section by section to create each of the tables, the CSV inf0rmation loaded and then the keys and relations modified.

The result of loading the csv files into the Postgres Database can be seen below.

![image](/Info/Successful_db_Creation.PNG)

The numbers of records for each of the tables in the database match the original data (see information of rows underneath the query results).

### Campaign db

![image](/Info/SQL_campaign_db_screenshot.PNG)

### Contacts db

![image](/Info/SQL_contacts_db_screenshot.PNG)

### Category db

![image](/Info/SQL_category_db_screenshot.PNG)

### SubCategory db

![image](/Info/SQL_subcategory_db_screenshot.PNG)

## Submission

1. Submitted and available in GitHub under https://github.com/lcardsvr/Crowdfunding_ETL

2. Jupyter Notebooks used for manipulation available under https://github.com/lcardsvr/Crowdfunding_ETL/blob/main/ETL_Mini_Project_LCardenas.ipynb

3. SQL Schema used for Postgres Table creation available under https://github.com/lcardsvr/Crowdfunding_ETL/blob/main/crowdfunding_db_schema.sql

