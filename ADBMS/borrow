create table borrow(loanno varchar(10) primary key,cname varchar(25) references customer(cname),bname varchar(25)references branch(bname),amount int(10));

create table customer(cid varchar(10)primary key,cname varchar(25),number int(11));

create table branch(bid varchar(10)primary key,bname varchar(25),place varchar(30));

insert into customer(cid,cname,number)values
    -> ('e','anju',9872242),
    -> ('d','ameen',6345442),
    -> ('c','zal',675442),
    -> ('b','anu',8534272),
    -> ('a','anas',8728272);

insert into barch(bid,bname,place)values
    -> ('q','sbt',pvt),
    -> ('w','sbt calicut',calicut),
    -> ('r','sbt mvr',mavoor),
    -> ('t','canara',kzkod),
    -> ('u','rbi',delhi);

insert into borrow(loanno,cname,bname,amount)values
    -> ('ab123','zal','sbk mvr',87264),
    -> ('ab124','ameen','sbt calicut',675213),
    -> ('ab125','anju','sbt kgm',89765),
    -> ('ab126','shaiku','bank',3545553);

select cname from borrow where bname='sbt calicut';

SELECT COUNT(DISTINCT loanno) from borrow;

SELECT COUNT(DISTINCT loanno) from borrow where bname='sbt calicut';

SELECT * from borrow order by cname desc;

SELECT * from borrow order by cname;

SELECT max(amount)from borrow;

SELECT cname, SUM(amount) AS total_loan_amount
FROM borrow
GROUP BY cname
ORDER BY total_loan_amount DESC
LIMIT 1;
