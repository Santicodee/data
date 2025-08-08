select 
ReviewID,
CustomerID,
ProductID,
ReviewDate,
Rating,
REPLACE(ReviewText, '  ',' ') as ReviewText

from
customer_reviews