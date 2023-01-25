-- Comments in SQL Start with dash-dash --




--1.
SELECT ID FROM analytics WHERE ID = 1880;



--2.
SELECT ID, app_name FROM analytics WHERE last_updated = 'August 01, 2018';



--3.
SELECT category, COUNT(app_name) FROM analytics GROUP BY category;



--4.
SELECT app_name, reviews FROM analytics ORDER BY reviews desc LIMIT 5;



--5.
SELECT app_name, reviews FROM analytics WHERE rating >= 4.8 LIMIT 1;



--6.
SELECT category, AVG(rating) FROM analytics GROUP BY category ORDER BY AVG(rating) DESC;



--7.
SELECT app_name, price, rating FROM analytics WHERE price = ( SELECT MAX(price) FROM analytics WHERE rating < 3);



--8.
SELECT * FROM analytics WHERE min_installs <= 50;



--9.
SELECT app_name, rating, reviews FROM analytics WHERE rating < 3 AND reviews >= 10000;



--10.
SELECT app_name, reviews, price FROM analytics WHERE price BETWEEN 0.10 AND 1.00;



--11.-
SELECT * FROM analytics WHERE last_updated = (SELECT MIN(last_updated) FROM analytics);



--12.
SELECT * FROM analytics WHERE price= ( SELECT MAX (price) FROM analytics);



--13.
SELECT COUNT(reviews) FROM analytics;



--14.
SELECT category, COUNT(app_name) FROM analytics GROUP BY category HAVING COUNT(app_name) > 300;



--15.
SELECT app_name, reviews, min_installs, min_installs/reviews AS proportion FROM analytics GROUP BY app_name, reviews, min_installs HAVING min_installs >= 100000 ORDER BY proportion desc LIMIT 1;

