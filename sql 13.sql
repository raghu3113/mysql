-- creation of the database
 create database school;  -- we want to create database for collection organized information
 use school;              -- use statement tells to use named database as the default(current) database
 create table teachers(   -- create is a DDL command is used to create an object in the database 
 name_ varchar(50),       -- varchar is a set of character data of indeterminate length
 salary int,
 subject_ varchar(50),
 age int,
 id int
 );
 insert into teachers value ("raghu",30000,"maths",25,1); --  the insert into statement adds new record to a table
 insert into teachers value ("ranga",32000,"physics",26,1);
 insert into teachers value ("babu",29000,"chemsitry",26,1);
 insert into teachers value ("rushi",35000,"hindi",23,1);
 insert into teachers value ("govardhan",30000,"english",24,1);
select * from teachers;   -- select statement returns a result set of records from table
 -- data retriveal using sql
 select * from teachers where id=1;  --  searching for where id=1 in the database
 select * from teachers where subject_ like "m%"; --  searching for where the subject starts with "M" in the table
 select * from teachers where name_ like "%i";     -- searching for where the name ends with "I"  in the table 
-- strings
select lower(name_) "lower"  -- this lower function converts the all the letters in specified string to lowercase
from teachers;
 select upper(name_) "upper"  -- this upper function converts the all the letters in specified string to uppercase
 from teachers;
-- data manupulation commands
select * from teachers;      -- select statement can be display all the records in the table

insert into teachers value("dhoni",28000,"soical",27,2); -- insert into statement adds new record to a table
 update teachers  -- update statement is used to modify the existing records in a table
 set subject_= "maths"  -- here we updating the maths subject to science subject
 where subject_= "science";

 delete from teachers where id =2;  -- delete statement is used to delete existing records in a table

-- intro clauses
select count(name_) "age count",age,name_ -- the group by statement groups rows that have tje same values into summary rows
from teachers         -- here we grouping age and name by using group by statement
group by name_;

select count(age) "age count",age  -- the order by statement is used to sort the result in ascending or descending order
from teachers  -- here we grouping age and ordering count of age
group by age
order by count(age);

select count(age) "age count",age
from teachers   -- we grouping count of age having age greather than 20 
group by age 
having age >20;

-- Different typres of cluase
create table employee( -- we creating the table employee
salary int not null,   -- not null means no row should not contain null values
employee_id int primary key,  --  primary key it should unique we can only uses for once in table
address varchar(200) not null,
age int not null
);
insert into employee value(60000,1,"hyderbad",20); 
insert into employee value(55000,2,"ranchi",20);
insert into employee value(65000,3,"chennai",20);
insert into employee value(60000,4,"kurnool",20);
insert into employee value(60000,5,"kadapa",20);
select * from employee;


create table customer(
salary int not null,
customer_id int primary key,
name_ varchar(200) not null,
person_id int not null
);

insert into customer value("6000",1,"raghu",1);
insert into customer value("5000",2,"ram",2);
insert into customer value("4500",3,"rahul",3);
insert into customer value("5500",4,"ranga",4);
insert into customer value("6000",5,"rajesh",5);
select * from customer;

-- JOINS  -- a join clause is used to combine rows from two or more tables , based on related or same column between them
select customer.customer_id from customer;

-- INNER JOIN  -- returns the records that have matching values in the both tables
select employee.employee_id,customer.customer_id from employee -- here employee and customer are two tables in this two tables having the id as the same column 
inner join customer on employee.employee_id = customer.customer_id;
 
 -- left join  -- returns the records from the left table and the matched records from the right table
 select employee.employee_id,employee.salary,customer.name_ from employee
 left join customer on employee.employee_id= customer.customer_id
 order by employee.salary;
 
 -- full join  -- returns the records when there is a match in either left or right table
 select * from employee
 full join customer;
 -- right join  -- returns the records from the right table and the matched records from the left table
 select employee.employee_id,employee.salary,customer.name_ from employee
 right join customer on employee.employee_id= customer.customer_id
 order by employee.salary;
 


