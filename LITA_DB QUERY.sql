create database LITA_DB

CREATE TABLE EMPLOYEE (
staffid varchar (10) not null,
FirstName varchar (255) NOT NULL,
SecondName varchar (255),
Gender varchar (10),
Date_of_Birth date,
HireDate datetime,
primary key (staffid)
)
select * from EMPLOYEE

insert into EMPLOYEE (staffid, firstname, secondname, gender,Date_of_Birth, hiredate)
values ( 'AB401', 'ayan', 'olakun', 'female', '1992-08-22', '2018-02-09'),
( 'AB212', 'okorie', 'mercy', 'female','1988-10-09', '2018-10-09'),
( 'AB223', 'joshua', 'chukwuemeka', 'male','1980-10-09', '2022-02-09'),
( 'AB234', 'sanni', 'ibrahim', 'male','1958-10-09', '2019-09-23'),
( 'AB254', 'mercy', 'olanipekun', 'female','1982-10-09', '2020-02-09'),
( 'AB249', 'johnson', 'mercy', 'female','1982-10-09', '2019-12-09'),
( 'AB298', 'ayomide', 'halleluyah', 'female', '1982-10-09','2018-07-11'),
( 'AB260', 'deborah', 'justin', 'female','1982-10-09', '2018-02-09'),
( 'AB281', 'wale', 'olanipekun', 'male','1982-10-09', '2018-02-09')

..... to drop table...... drop delete both the table and the record

drop table EMPLOYEE

......delete sql command ...... delete function delete a particular record in the database

delete from EMPLOYEE
where staffid='ab281'

.....truncate sql command....truncate only delete the entire record in the database

truncate table employee

.....identity in sql.....when you want to auto increase the primary key which is the staffid

create table person(
personid int identity (1,2) primary key not null,
firstname varchar (255),
age int 
)


insert into person(firstname, age)
values ('chidi',25),
('Ade','10'),
('fred','40'),
('faith','30'),
('ayo','21'),
('james','20')

select * from person

....inserting more record into existing table....

insert into EMPLOYEE
values ( 'AB200', 'ayomide', 'halleluyah', 'female', '1982-10-09','2018-07-11'),
( 'AB405', 'deborah', 'justin', 'female','1982-10-09', '2018-02-09'),
( 'AB282', 'wale', 'olanipekun', 'male','1982-10-09', '2018-02-09'),
( 'AB278', 'shukurat', 'lasisi', 'female','1982-10-09', '2018-02-09'),
( 'AB240', 'johnson', 'mercy', 'female','1982-10-09', '2019-12-09'),
( 'AB299', 'ayomide', 'halleluyah', 'female', '1982-10-09','2018-07-11'),
( 'AB268', 'deborah', 'justin', 'female','1982-10-09', '2018-02-09'),
( 'AB286', 'wale', 'olanipekun', 'male','1982-10-09', '2018-02-09'),
( 'AB270', 'shukurat', 'lasisi', 'female','1982-10-09', '2018-02-09')

select * from EMPLOYEE


....to create second table called SALARY TABLE.....

CREATE TABLE SALARY(
Salary_id int identity (1,3)not null,
staff_id varchar (255),
Firstname varchar (255),
Lastname varchar (255),
Department varchar (255),
Salary decimal (10,3)
)

select * from salary

insert into salary (staff_id, FirstName, lastname, Department, Salary)
values ( 'AB401', 'ayan', 'olakun', 'Information Tech.', 45000.45),
( 'AB212', 'okorie', 'mercy','Account',500000.99999),
( 'AB223', 'joshua', 'chukwuemeka', 'Human Resources',100560.9339999),
( 'AB234', 'sanni', 'ibrahim', 'Sales and Marketing',845688.99),
( 'AB254', 'mercy', 'olanipekun', 'Account',8889.999999),
( 'AB249', 'johnson', 'mercy', 'Information Tech.',234000.90909090),
( 'AB298', 'ayomide', 'halleluyah', 'Logistics', 678000.991999),
( 'AB260', 'deborah', 'justin', 'Logistics',900099.00697969),
( 'AB281', 'wale', 'olanipekun', 'Information Tech',873093.2344)

.....to insert more record into salary.....

insert into salary
values ( 'AB200', 'ayomide', 'halleluyah', 'Human Resources',45699.8585),
( 'AB405', 'deborah', 'justin', 'Account',898349.900222),
( 'AB282', 'wale', 'olanipekun', 'Sales and Marketing',362636.564848),
( 'AB278', 'shukurat', 'lasisi', 'Logistics',100000.464647),
( 'AB240', 'johnson', 'mercy', 'Information Tech',3855590.9890093),
( 'AB299', 'ayomide', 'halleluyah', 'Account', 8585858.9292),
( 'AB268', 'deborah', 'justin', 'Human Resources',76767.93939)

select * from salary

.....sql functions.....
....SUM,COUNT, MAX, MIN, AVERAGE.....
WE HAVE QUALITATIVE DATA AND QUALITATIVE DATA
Qualitatatative data are data that can not agregated like staffid, department, sum, min, max
Quantitative data are data that can be agregated like name revenue, sales unit cost

select sum(Salary) AS TOTALSALARY from SALARY

SELECT AVG(Salary) as AverageSalary from Salary

select count(staffid) as employeeCount from Employee

select count(staffid) as totalid from employee

select count(department) from SALARY


.....UPDATE.....

update Salary
set Salary = 7056999.994
where staff_id = 'AB401'


.....13/09/2024.........

......update staff name..... 

select * from [dbo].[EMPLOYEE]

update employee
set secondname = 'Endurance'
where staffid = 'AB405'

....update department........

select * from[dbo].[SALARY]

update Salary
set Department = 'Information Tech.'
Where Staff_id = 'AB234'

update Salary
set Department = 'Information Tech.'
Where Staff_id = 'AB281'

update Salary
set Department = 'Information Tech.'
Where Staff_id = 'AB240'

select * from SALARY
where staff_id = 'AB281'

select * from EMPLOYEE

update employee
set Date_of_Birth = '1992-10-09'
where staffid = 'AB212'

..... how do we add state of origin to employee's table
....CREATE ADDITIONAL COLUMN INTO EMPLOYEE  TABLE.....

ALTER TABLE EMPLOYEE
Add State_of_Origin varchar(50) 

select * from employee

update employee
set state_of_origin = 'Ogun state'
where staffid = 'AB200'

update employee
set state_of_origin = 'Enugu State'
where staffid = 'AB212'

update employee
set state_of_origin = 'Abia State'
where staffid = 'AB223'

update employee
set state_of_origin = 'Oyo State'
where staffid = 'AB234'

update employee
set State_of_origin = 'Edo State'
where staffid = 'AB240'

update employee
set State_of_origin = 'Edo State'
where staffid = 'AB240'