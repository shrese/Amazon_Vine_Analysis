-- Step 1: From your AWS database, export the vine_table as a CSV file and save it to your 
--         Amazon_Vine_Analysis GitHub repository.

-- Step 2: In pgAdmin, create a new database that is not linked to your AWS RDS instance. 

-- Step 3: Create a new SQL file and name it Vine_Review_Analysis.sql.

-- Step 4: Recreate the vine_table using the schema provided in the challenge_schema.sql file.
CREATE TABLE vine_analysis(
	review_id TEXT PRIMARY KEY,
 	star_rating INT,
 	helpful_votes INT,
 	total_votes INT,
 	vine TEXT,
 	verified_purchase TEXT);

-- 4,880,466
SELECT COUNT(review_id)
	FROM vine_analysis;
-- 87,335
SELECT COUNT(review_id)
	FROM vine_analysis
	WHERE (helpful_votes >19);

-- Step 5: Import the vine_table.csv file into the table, and perform your analysis using the steps above.

---------------------------------
-- Step 1: Filter the data and create a new table to retrieve all the rows where the total_votes
--         count is equal to or greater than 20.

SELECT review_id, star_rating, helpful_votes, total_votes, vine, verified_purchase
	INTO helpful_votes_greaterthan_twenty
	FROM vine_analysis
	WHERE (helpful_votes >19);
	
-- 87,335
SELECT count(review_id)
	FROM helpful_votes_greaterthan_twenty;

---------------------------------
-- Step 2: Filter the new table created in Step 1 and create a new table to retrieve all the rows where the
--         number of helpful_votes divided by total_votes is equal to or greater than 50%.

SELECT review_id, star_rating, helpful_votes, total_votes, vine, verified_purchase
	INTO fifty_percent
	FROM helpful_votes_greaterthan_twenty
	WHERE CAST (helpful_votes AS FLOAT)/CAST(total_votes AS FLOAT) >=0.5;
	
-- 86,870
SELECT count(review_id)
	FROM fifty_percent;

---------------------------------
-- Step 3: Filter the table created in Step 2, and create a new table that retrieves all the rows where a 
--         review was written as part of the Vine program (paid), vine == 'Y'.

SELECT review_id, star_rating, helpful_votes, total_votes, vine, verified_purchase
	INTO vine_yes 
	FROM fifty_percent
	WHERE vine = 'Y';
	
-- 1,074
SELECT count(review_id)
	FROM vine_yes;

---------------------------------
-- Step 4: Repeat Step 3, but this time retrieve all the rows where the review was not part of the Vine 
--         program (unpaid), vine == 'N'.

SELECT review_id, star_rating, helpful_votes, total_votes, vine, verified_purchase
	INTO vine_no
	FROM fifty_percent
	WHERE vine = 'N'

-- 85,796
SELECT count(review_id)
	FROM vine_no;

---------------------------------
-- Step 5: Determine the total number of reviews, the number of 5-star reviews, and the percentage 
--         of 5-star reviews for the two types of review (paid vs unpaid).