# Amazon Reviews - Analysis of Kitchen Purchases

## Overview

This review is to analyze Amazon reviews written by members of the paid Amazon Vine program and compare to the reviews of $ellBy to see how their product may perform and if a customer loyalty program would be profitable for the company.

_The Amazon Vine program is a service that allows manufacturers and publishers to receive reviews for their products. Companies like $ellBy pay a small fee to Amazon and provide products to Amazon Vine members, who are then required to publish a review._

Our company, BigMarket, is a start-up company that helps other companies with marketing efforts.  $ellBy, one of our clients, is about to release a large amount of kitchen products on Amazon.  They are wanting to know how the reviews of their products compare to similar products of their competitors.  They are also looking to start a points program for their loyal customers.  

## Results
Due to the large number of reviews, 4.9 million, for kitchen products, the data set was filtered for the following to ensure the value and validity of the review data:
1. Amazon members with a minimum of 20 reviews that were helpful to others. (87,335 votes)
2. Where the Amazon member's number of helpful votes was greater than 50% of their total votes. (86,870)
3. The population was divided into two categories:
    * Vine Members (1,074)
    * Non-Vine Members (85,796)
________
#### How many Vine reviews and non-Vine reviews were there?
There was a total of 4.88 million reviews for kitchen products on Amazon, of which 4.86 million were not from Amazon Vine Members. There were only 24,000 reviews from Vine Members.

![](Resources\total_votes.PNG)

In the smaller population, there were a total of 86,870, of which 1,074 were vine reviews and 85,796 were from non-vine reviews. 

________
#### How many/percentage of Vine reviews were 5 stars? How many non-Vine reviews were 5 stars?
Of the 4.88 million reviews there were a total of 3.12 million 5-stars.  The majority of the 5-star reviews, or 99.6% were not members.  Only 0.4% were members.

![](Resources\percent_votes.PNG)

Of the smaller population, there were a total of 42,412 reviews of which only 456, or 1.08% were members.  This gives us only 41,956 or 99.92% in the non-members bucket.

## Summary
Based on the data set given, the reviews are skewed by the fact that the majority of the reviews are from non-Vine members. The results of the analysis has two possible outcomes for the loyalty program:  
* The is insufficient data to be able to ascertain whether or not it would be profitable.  
* The data suggests that the program in not popular enough among Amazon members to put effort and money into a program.  

The dada does not suggest whether or not $ellBy's products would be able to compete with other products on the Amazon website.  There is no real comparison between products to make an informed decision.  

There is not enough information given to fully understand if there is any positivity bias for reviews in the Vine program.  Also, the Vine member data set is too small to have meaningful results.  

Next steps would be to analyze the actual review statements to see if there are any trends or bias toward any products in comparison to other products.

_footnote: there is additional data and visuals in the resources and challenge table folders that was utilized as part of this analysis.  Some files were too large to upload to GitHub._
