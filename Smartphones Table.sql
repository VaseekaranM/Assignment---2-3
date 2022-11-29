create table smartphones(slno int,products varchar(20),price int);
insert into smartphones(slno,products,price)values(1,'samsung',20000); 
insert into smartphones(slno,products,price)values(2,'Nokia',40000);  
insert into smartphones(slno,products,price)values(3,'redmi',12000); 
insert into smartphones(slno,products,price)values(4,'realme',25000); 
insert into smartphones(slno,products,price)values(5,'Oneplus',50000); 
insert into smartphones(slno,products,price)values(6,'honor',60000); 
insert into smartphones(slno,products,price)values(7,'Apple',80000); 
insert into smartphones(slno,products,price)values(8,'tecno',40000); 
insert into smartphones(slno,products,price)values(9,'vivo',24000); 
insert into smartphones(slno,products,price)values(10,'huawei',44000);  

select *from smartphones

#min and max 
  
select max(slno) 
from smartphones 
where price<=40000; 
  
select min(slno) 
from smartphones 
where price<=40000; 

#avg 
select avg(price)from smartphones; 
  
#count 
select count (price)from smartphones; 
  
#sum 
select sum(price)from smartphones; 
  
#and operation 
select *from smartphones where products='Apple'and price=80000;
 
#or operation 
select *from smartphones where products='Oneplus'OR price=50000; 
  
#ADDING COLUMN 
ALTER TABLE smartphones add experience float; 

#drop column 
alter table smartphones drop column experience;

#create another table 
  
create table smartphones1(slno int,products varchar(20),price int); 
insert into smartphones1(slno,products,price)values(1,'gionee',20000); 
insert into smartphones1(slno,products,price)values(2,'oppo',40000); 
insert into smartphones1(slno,products,price)values(3,'lenovo',10000); 
insert into smartphones1(slno,products,price)values(4,'micromax',5000); 
insert into smartphones1(slno,products,price)values(5,'xiaomi',50000); 
insert into smartphones1(slno,products,price)values(6,'googlepixel',60000); 
insert into smartphones1(slno,products,price)values(7,'lava',8000); 
insert into smartphones1(slno,products,price)values(8,'IQ',4000); 
insert into smartphones1(slno,products,price)values(9,'moto',20000); 
insert into smartphones1(slno,products,price)values(10,'sony',10000); 
  
select *from smartphones1 

#inner join 
  
select smartphones.products, smartphones.price,smartphones1.products,smartphones1.price
from smartphones
inner join smartphones1
on smartphones.price =smartphones1.price; 
  
  
#full join 
  
select smartphones.products, smartphones.price,smartphones1.products,smartphones1.price 
from smartphones
full join smartphones1 
on smartphones.price = smartphones1.price; 
  
  
#left join 
  
select smartphones.products, smartphones.price,smartphones1.products,smartphones1.price 
from smartphones 
left join smartphones1  
on smartphones.price = smartphones1.price;
  
#right join 
  
select smartphones.products, smartphones.price,smartphones1.products,smartphones1.price 
from smartphones
right join smartphones1
on smartphones.price = smartphones1.price;   

#left outer join 
  
select smartphones.products, smartphones.price,smartphones1.products,smartphones1.price 
from smartphones
left outer join smartphones1  
on smartphones.price = smartphones1.price;  

#right outer join 
  
select smartphones.products, smartphones.price,smartphones1.products,smartphones1.price 
from smartphones
right outer join smartphones1
on smartphones.price = smartphones1.price;  
  
#full outer join 
select smartphones.products, smartphones.price,smartphones1.products,smartphones1.price 
from smartphones
full outer join smartphones1 
on smartphones.price = smartphones1.price;
  
#desc 
select *from smartphones  order by price desc; 
  
#asc 
select *from smartphones order by price asc;

