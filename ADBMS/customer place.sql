create table customer (cname varchar(25)primary key,city varchar(25));

INSERT INTO customer(cname, city)
VALUES
    ('anas', 'calicut'),
    ('anu', 'calicut'),
    ('ameen', 'delhi'),
    ('achu', 'america'),
    ('anil', 'calicut'),
    ('nilson', 'kochi'),
    ('nilay', 'delhi'),
    ('nilesh', 'bangalore'),
    ('nilam', 'chennai'),
    ('nilani', 'mumbai');

SELECT cname
FROM customer
ORDER BY cname ASC;

select count(*)as cname from customer;

select count(*)as city from customer where city='calicut';

select cname,city from customer where city in('calicut','delhi');

SELECT cname
FROM customer
WHERE (city = 'calicut' OR city = 'delhi')
AND cname LIKE '%nil%';

SELECT city, COUNT(*) AS city_count
FROM customer
GROUP BY city;
