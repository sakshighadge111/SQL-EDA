use `awesome chocolates`;
show tables;
select * from sales;

#show few cloumn of sales table
select saleDate,Customers from sales;

# Adding calculative column
select saleDate,Amount,Boxes,Amount/Boxes from sales;

#Naming a calculaed column
select saleDate,Amount,Boxes,Amount/Boxes as 'amountperboxes' from sales;

# use of Where clouse
select * from sales where Amount>10000;

# use of order by clouse
select * from sales where Amount>10000 order by Amount desc;


select * from sales where GeoID='G1' order by Amount desc;

select * from sales where Amount>10000 and saleDate>='2022-01-01';

# using year function
select saleDate,Amount from sales where Amount>10000 and year(saleDate)=2022;

#Use of BETWEEN
select * from sales where Boxes >0 and Boxes < 50;

select * from sales where Boxes between 0 and 50;

# using weekday function in SQL
select saleDate,Amount,Boxes,weekday(saleDate) as 'dayofweek' from sales where weekday(saleDate)=2;

# Working with people table
select * from people;

select * from people where Team= 'Jucies' or Team= 'Yummies';

#IN Operator
select * from people where Team in ('Jucies','Yummies');

#Like operator
select * from people where Salesperson like 'B%';
select * from people where Salesperson like '%B%';
select * from people where Salesperson like '%B';

# use of case to create branching logic
select SaleDate,Amount,
case when Amount < 1000 then 'under 1K'
when Amount < 5000 then 'under 5K'
when Amount < 10000 then 'under 10K'
else '10K or More'
END  AS Amount_Category from sales;