# 1. List the distinct regions in the Country table.

SELECT DISTINCT region FROM country;
SELECT DISTINCT region FROM country ORDER BY region ASC; # extra code added to sort alphabetically


# 2. How many countries are located in European regions?

SELECT COUNT(name) FROM country WHERE continent = 'Europe';
# SELECT COUNT(name) FROM country WHERE region LIKE '%Europe'; is incorrecr as does not include British Isles or Nordic Countries


# 3. Find the total population of all countries group by regions.

SELECT region, SUM(population) FROM country GROUP BY region;
SELECT region, SUM(population) FROM country GROUP BY region ORDER BY region ASC; # extra code added to sort alphabetically
SELECT region, SUM(population) AS sum-population FROM country GROUP BY region; # to rename the column

# 4. Use one query to answer the following 2 questions
    # i.  Find the countries (countrycodes) which have the most spoken languages used
    # ii. Find the maximum number of languages you can use in one country

SELECT countrycode, COUNT(language) FROM countrylanguage GROUP BY countrycode ORDER BY count DESC;
# How do I find the country from the countrycode?  (Turns out we were only expceted to find the countries)


# 5. Find all the Asia countries that went independent from 1940 to 1950. Order the result by the year of independence.

SELECT indepyear,name FROM country WHERE continent = 'Asia' AND indepyear >= 1940 AND indepyear <= 1950 ORDER BY indepyear ASC;


# 6. Find all the countries (countrycodes) that do not use English at all

SELECT countrycode, language, percentage FROM countrylanguage WHERE language = 'English' AND percentage = 0;
# How do I find the country from the countrycode?


