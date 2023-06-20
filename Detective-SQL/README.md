# Detective SQL

## Introduction

A crime has taken place and the detective needs your help. The detective gave you the crime scene report, but you somehow lost it. You vaguely remember that the crime was a murder that occurred sometime on Jan.15, 2018 and that it took place in SQL City. Start by retrieving the corresponding crime scene report from the police department’s database.

Follow these steps to solve this challenge:

- Download the sql-murder-mystery.db file here https://drive.google.com/drive/folders/1SLlSSzIqhu9m4p8HmoJYjn5X_GTYdDsf?usp=share_link

- Visit www.sqliteonline.com

- Click on file, then open db and load in the database file you downloaded above

- Write your SQL queries to see the different tables and the content

- Use the Schema Diagram from the Google Drive Folder above to navigate the different tables

- Figure out who committed the crime with the details you remembered above

- Create a word or txt document that contains your thought process, narrative and SQLcodes written to arrive at the solution to the murder mystery

- Submit a Google Drive or OneDrive link to the word or text document

## Solution Approach

In my [documented sql code](https://github.com/Nancy9ice/Data-Analytics-Super-League-1/blob/main/Detective-SQL/sql-murder-mystery-sql-code.sql), I followed the following approach. 

- Transformed the “date” columns to be readable since SQLite don’t have a DATE datatype

- Extracted the crime description with the knowledge that it's a murder case that happened in SQL city on 15th January 2018. The output revealed 3 murders that happened in SQL city where only one was descriptive enough to go further for the investigation. It had this description: *Security footage shows that there were 2 witnesses. The first witness lives at the last house on "Northwestern Dr". The second witness, named Annabel, lives somewhere on "Franklin Ave".*

- There are two witnesses where one is named Annabel and the other is unnamed. The next step was to find Annabel's testimony in the police station. She mentioned she saw the killer. Here’s her testimony in the transcript column: *I saw the murder happen, and I recognized the killer from my gym when I was working out last week on January the 9th.* Her testimony revealed that the murder happened in a gym. We’ll use that information to find the other witness. 

- The other witness who lives at Northwestern Dr. was found through his address. However, There were many persons with testimonies that lived in this exact location. So I went through each testimony to figure out the one related to a murder at a gym. A certain Morty Schapiro had this testimony description: *I heard a gunshot and then saw a man run out. He had a "Get Fit Now Gym" bag. The membership number on the bag started with "48Z". Only gold members have those bags. The man got into a car with a plate that included "H42W".*

- Using the descriptions mentioned in the testimony by Morty Schapiro, the murderer named Jeremy Bowers was found where only him fit the description of having a gold membership status and having a plate number that included ‘H42’.

**But that's not all...**

I need to also find the person who hired him. Hence, I went further with these steps: 

- I got the testimony of the murderer using his person identification number in the police station. This was his testimony: *I was hired by a woman with a lot of money. I don't know her name but I know she's around 5'5" (65") or 5'7" (67"). She has red hair and she drives a Tesla Model S. I know that she attended the SQL Symphony Concert 3 times in December 2017*

- The person who hired Jeremy Bowers named Miranda Priestly was found based on the description provided by Jeremy Bowers

## Conclusion
Jeremy Bowers is the murderer while Miranda Priestly hired him. 





