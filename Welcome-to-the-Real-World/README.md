# Welcome to the Real World

## Introduction

The brief of this challenge is stated in details in this [word document](https://github.com/Nancy9ice/Welcome-to-the-Real-World/blob/main/DASL1%20-%20Level%205%20Challenges%20%5BREAD%20THIS%20FIRST%5D.docx). However, I'll be summarizing it briefly. 

The challenge is divided into three tasks:

- [Task 1](https://github.com/Nancy9ice/Welcome-to-the-Real-World/blob/main/Task%201%20Python%20Code.ipynb)

- [Task 2](https://github.com/Nancy9ice/Welcome-to-the-Real-World/blob/main/Task%202%20Python%20Code.ipynb)

- [Task 3](https://github.com/Nancy9ice/Welcome-to-the-Real-World/blob/main/Task%203%20PowerPoint%20Presentation.pptx)

## Task One 

Listed below are the expectations of Task 1:

- Clean the [QVI_transaction_data](https://github.com/Nancy9ice/Welcome-to-the-Real-World/blob/main/QVI_transaction_data.xlsx) dataset

- Clean the [QVI_purchase_behaviour](https://github.com/Nancy9ice/Welcome-to-the-Real-World/blob/main/QVI_purchase_behaviour.csv) dataset

- Merge both datasets and explore the data to identify patterns and trends

- Determine customer segments from the data

- Draw conclusions while making recommendations

- Design a dashboard that tracks the purchase behavior of the customer segments

### Task One Solution Approach

- To clean both datasets, the following were done:

    - column names were made more readable

    - columns datatype was changed to appropriate datatype

    - date format was changed

    - regular expression was used to extract pack size from product names

    - brand names was extracted from product names

    - duplicates were removed

- Exploratory Data Analysis

    - Univariate analysis

    - Bivariate analysis

    - Multivariate analysis

- Outliers were handled using Winsorization Method

- Segmentation Analysis was carried out using KPrototypes

- Conclusions were drawn on customer segments and their purchase behavior

- Recommendations were made

- [PowerBI Dashboard](https://app.powerbi.com/groups/me/reports/8da994a6-83d4-4536-8946-9dfbe58b2538/ReportSection2003205a4d52b97ed3c6?experience=power-bi) was designed and published to track the purchase behavior of customer segments

All codes were written using [Python in this Jupyter notebook](https://github.com/Nancy9ice/Welcome-to-the-Real-World/blob/main/Task%201%20Python%20Code.ipynb). 

## Task Two

Listed below are the expectations of Task 2:

- Use the QVI_data dataset

- Select control stores

- Compare the sales performance of the trial stores (store 77, 86, and 88) to the control stores

- Collate Findings

- Make Recommendations

### Task Two Solution Approach

- **Data Cleaning:** The dataset was somewhat clean. However, few things were done to make them ready for analysis:
    - Column names were made readable

    - columns datatype were made appropriate

- **Selection of Control Stores:** To select control stores, the following tasks were carried out:

    - All multiple entries of the stores were collapsed into one entry by taking the mean and mode for numerical and categorical variables respectively. 

    - Gower similarity measure was used to calculate similarity stores between each trial store and other stores

    - Top 5 stores with highest similarity measures compared to the trial stores were selected as the control stores

- **Evaluation of Sales Performance:** Sales performance of the control and trial stores were measured to determine the effect of changes on the trial stores. 

- Conclusions were drawn

- Recommendations were made

All these were carried out using [Python in this Jupyter notebook](https://github.com/Nancy9ice/Welcome-to-the-Real-World/blob/main/Task%202%20Python%20Code.ipynb).

## Task Three

As part of a company's retail analytics team, you have been conducting a range of analysis on transaction and purchase behavior data to provide key recommendations to your client, the Category Manager of chips, who is putting together their strategic plan.

Send a report to Julia, based on our analytics from the previous tasks. We want to provide her with insights and recommendations that she can use when developing the strategic plan for the next half year.


### Task 3 Solution Approach

The report to be sent to Julia is a [PowerPoint Presentation](https://github.com/Nancy9ice/Welcome-to-the-Real-World/blob/main/Task%203%20PowerPoint%20Presentation.pptx) to take her through the analysis in Task 1 and make recommendations that would form the strategy for the next half year in improving sales from the different customer segments. 

## Conclusion

There were about four deliverables in this project

- [Python Code for Task 1](https://github.com/Nancy9ice/Welcome-to-the-Real-World/blob/main/Task%201%20Python%20Code.ipynb)

- [Dashboard for Task 1](https://app.powerbi.com/view?r=eyJrIjoiMGExZDYwNzgtYjFhYi00MWQ0LTkxMmItMGM2ZTZkNTQ1ZTM3IiwidCI6ImE4NjhhMGZiLWFmY2MtNGQyMC04NmRhLTM3N2ZiMzY0ZmFiNSJ9)

- [Python Code for Task 2](https://github.com/Nancy9ice/Welcome-to-the-Real-World/blob/main/Task%202%20Python%20Code.ipynb)

- [PowerPoint Presentation for Task 3](https://github.com/Nancy9ice/Welcome-to-the-Real-World/blob/main/Task%203%20PowerPoint%20Presentation.pptx)
