# Movie Time

## Introduction

Clean the [movies.csv](https://github.com/Nancy9ice/Movie-Time/blob/main/movies.csv) data with Python.

- Remove duplicate values from the movies column

- Clean the year column to get the appropriate year

- Get the first genre from the genre column

- Clean the rating column

- Get the director name and put it in a different column and also put the stars names in a separate column

- Clean the votes column

- Clean the runtime column

- Clean the gross column

## Solution Approach

It was important for me to understand the movie industry to clean this data successfully so I acquired domain knowledge in the movie industry by carrying out intensive research

Listed below are some of the ways I used to clean the data successfully using [python in my Jupyter notebook](https://github.com/Nancy9ice/Movie-Time/blob/main/Movie%20Time%20Python%20Code-checkpoint.ipynb): 

- **Clean the year column to get the appropriate year:** Regular expressions was used to maintain a form of consistency in the way the years appeared. Then, the year column was split to accommodate the release start year and the release end year in different columns. This is to ensure that series movies with different release years were also taken care of. 

- **Get the first genre from the genre column:** The genre column was split by the comma character while only the first words were taken

- **Clean the rating column:** This column contained null values so these null values were filled using the median grouped by genre since fans of a particular genre rate movies differently. 

- **Get the director name and put it in a different column and also put the stars names in a separate column:** Regukar expressions was used to extract the Director name from the stars column and put in a column called Director

- **Clean the votes column:** The null values in this column were filled with the median votes grouped by genre

- **Clean the runtime column:** The null values in this column were filled with the median votes grouped by genre

- **Clean the gross column:** This column contained the gross revenue generated for each movie. They had the string datatype because each value contained the '$' and 'M' characters. Both characters were removed and each value was multiplied by 1,000,000 to convert it to million. Then the column datatype was converted to float datatype for each calculations. Then the null values were replaced by the median of the gross revenue grouped by the genre types. 

## Conclusion

The data was successfully cleaned using the [python code in a Jupyter notebook](https://github.com/Nancy9ice/Movie-Time/blob/main/Movie%20Time%20Python%20Code-checkpoint.ipynb) and was read into a csv file named [clean_movies_data](https://github.com/Nancy9ice/Movie-Time/blob/main/clean_movies_data.csv)