-- Comments in SQL Start with dash-dash --
--app with id of 1880--
SELECT app_name FROM analytics WHERE id = 1880;
--apps last updated august 1, 2018--
SELECT app_name, id FROM analytics WHERE last_updated = '2018-08-01';
--count apps in all categories--
SELECT category, COUNT(*) FROM analytics GROUP BY category;
--apps with top 5 reviews--
SELECT app_name, reviews FROM analytics ORDER BY reviews desc LIMIT 5;
--top with most reviews and rating 4.8 or greater--
SELECT app_name, reviews, rating FROM analytics WHERE rating >= 4.8 ORDER BY reviews desc LIMIT 1;
--group by category sort by average rating--
SELECT AVG(rating), category FROM analytics GROUP BY category ORDER BY AVG(rating) desc;
--most expensive app with rating less than 3--
SELECT app_name, price, rating FROM analytics WHERE rating < 3 ORDER BY price DESC LIMIT 1;
--8--
SELECT * FROM analytics WHERE min_installs <= 50 AND rating IS NOT NULL  ORDER BY rating DESC;
--9--
SELECT app_name FROM analytics WHERE rating < 3 AND reviews > 10000;
--10--
SELECT app_name, price, reviews FROM analytics WHERE price >= .10 AND price <= 1 ORDER BY reviews DESC LIMIT 5;
--11--
 SELECT * FROM analytics WHERE last_updated = (SELECT MIN(last_updated) FROM analytics);
 --12--
 SELECT * FROM analytics WHERE price = (SELECT MAX(price) FROM analytics);
 --13--
 SELECT SUM(reviews) FROM analytics;
 --14--
  SELECT category FROM analytics GROUP BY category HAVING COUNT(*) > 300;
  --15--
  SELECT app_name, reviews, min_installs, min_installs / reviews as proportion FROM analytics WHERE min_installs > 100000 ORDER BY proportion DESC LIMIT 1;
