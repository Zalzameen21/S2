use bankanddepost


 create table deposit(accno varchar(10)primary key,cname varchar(25),bname varchar(25) references branch(bname),amount int(10),accdate date);

 create table branch (bname varchar(25));

 insert into deposit(accno,cname,bname,amount,accdate)values
   (2,'anu','sbi india',234521,'1934-08-5'),
    (3,'ameen','fedral',123123,'1111-1-1');

insert into branch(bname)values
    ('sbt calicut'),('sbi india'),('fedral');

SELECT b.bname, SUM(d.amount) AS total_deposit
FROM deposit d
JOIN branch b ON d.bname = b.bname
GROUP BY b.bname;


SELECT a.bname, SUM(b.amount) AS sbt_calicut_total
FROM deposit b
JOIN branch a ON a.bname = b.bname
WHERE a.bname = 'sbt calicut'
GROUP BY a.bname;



SELECT a.bname, SUM(b.amount) AS sbt_calicut_total_and_delhi
FROM deposit b
JOIN branch a ON a.bname = b.bname
WHERE a.bname IN ('sbt calicut', 'sbt new delhi')
GROUP BY a.bname;


SELECT a.bname, SUM(b.amount) AS total_deposit
FROM deposit b
JOIN branch a ON a.bname = b.bname
GROUP BY a.bname
ORDER BY total_deposit DESC
LIMIT 1;


SELECT a.bname, MAX(b.amount) AS highest_individual_deposit
FROM deposit b
JOIN branch a ON a.bname = b.bname
GROUP BY a.bname
ORDER BY highest_individual_deposit DESC
LIMIT 1;


SELECT a.bname, SUM(b.amount) AS total_deposit
FROM deposit b
JOIN branch a ON a.bname = b.bname
GROUP BY a.bname;


SELECT a.bname, SUM(b.amount) AS total_deposit
FROM deposit b
JOIN branch a ON a.bname = b.bname
WHERE b.accdate BETWEEN '1687-03-01' AND '3333-03-03'
GROUP BY a.bname;
