use bankanddepost


 create table deposit(accno varchar(10)primary key,cname varchar(25),bname varchar(25) references branch(bname),amount int(10),accdate date);

 create table branch (bname varchar(25));

 insert into deposit(accno,cname,bname,amount,accdate)values
   (2,'anu','sbi india',234521,'1934-08-5'),
    (3,'ameen','fedral',123123,'1111-1-1');

insert into branch(bname)values
    ('sbt calicut'),('sbi india'),('fedral');


SELECT accno,cname,amount,accdate, bname
FROM deposit
WHERE bname = 'sbt calicut';


SELECT COUNT(DISTINCT cname) AS customer_count
FROM deposit
WHERE bname = 'sbt calicut';


SELECT MAX(amount) AS max_deposit, COUNT(*) AS deposit_count
FROM deposit
WHERE bname = 'sbt calicut';


SELECT accno, cname,amount, accdate, bname
FROM deposit
WHERE bname = 'sbt calicut'
ORDER BY amount DESC;


DISTINCT cname
FROM deposit
WHERE bname = 'sbt calicut';

SELECT accno, cname, bname, amount, accdate
FROM deposit
WHERE accdate > '1998-01-01';
