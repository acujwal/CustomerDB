create database people;
use people;


CREATE TABLE person(

  id INTEGER not null PRIMARY KEY auto_increment,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  age INTEGER 
  );

CREATE TABLE pet(
 id INTEGER not null PRIMARY KEY auto_increment,
 name varchar(50),
 breed varchar(50),
 age INTEGER,
 dead INTEGER
 
 );
 
 CREATE TABLE person_pet (
 person_id INTEGER,
 pet_id INTEGER,
 foreign key (person_id) references person(id)
 );
 
 
 CREATE TABLE car(
 brand varchar(50),
 color varchar(50),
 model varchar(50),
 car_id INTEGER
);

CREATE TABLE person_car(
	person_id INTEGER,
    car_id INTEGER,
    foreign key (person_id) references person(id)
    );
 
 create database customers;
 use customers;
 select * from customers;
 desc customers;
 select count(*) from customers;
 select count(distinct company) as 'Distinct' from customers;
 alter table customers add CompalnyID int;
alter table customers change compalnyID CompanyId int;
select companyId, company from customers;

create table Company(
CompanyId int Not NULL auto_increment,
Company varchar(50),
primary key (CompanyId)
);
 
 select * from Company;
 describe Company;
 insert into Company (company) values ('Dave Company');
 select CompanyId, Company from Customers;
 
 
 
insert into car(brand, color, model, car_id) values ("Toyota","silver", "suv",1);
insert into car(brand, color, model, car_id) values ("Honda","Red", "Sedan",2);


select * from car;
select * from person_pet;
select * from person_car;
select * from person;


insert into person_car(person_id, car_id) values (1,1);
insert into person_pet (person_id, pet_id) values (2, 8);

insert into pet(name, breed, age, dead) values ("Dog", "German sheferd", 5, 12);
insert into pet(name, breed, age, dead) values ("Dog", "sheferd", 10, 5);
select * from person_car;
select * from person;

insert into person (first_name, last_name, age) values ("pratav", "rathor",25);
insert into person (first_name, last_name, age) values ("Dave", "Wolf",35);

delete from person where id=3;
select * from person;

delete from person where id=4;
select count(*) from customers;
select * from customers;

DROP table customers;

SELECT name, age FROM pet;
SELECT name, age FROM pet WHERE age > 10;
SELECT * FROM person WHERE age < 20;