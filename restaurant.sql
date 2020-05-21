-- step 1
select * from review where restaurant_id = 3;

-- step 2
select * from review where restaurant_id = (select id from restaurant where restaurant_name = 'SOS Tiki Bar');

-- step 3 
select * from review where reviewer_id = (select id from reviewer where reviewer_name = 'Joe');

--inner join step 4
select *
from review
inner join restaurant
on review.restaurant_id = restaurant.id;

--inner join with average step 5
select restaurant_name, avg(stars) as AverageStars
from restaurant
inner join review
on restaurant_id = restaurant.id
group by restaurant_name;

--inner join with count step 6
select restaurant_name, count (review) as ReviewCount
from restaurant
inner join review
on restaurant_id = restaurant.id
group by restaurant_name;

--three table join step 7
select review, restaurant_name, reviewer_name
from review
inner join restaurant
on review.restaurant_id = restaurant.id
inner join reviewer
on reviewer.id = review.id;

--innerjoin with average step 8
select reviewer_name, avg(stars) as AverageStars
from reviewer
inner join review
on reviewer.id = reviewer_id
group by reviewer_name;

