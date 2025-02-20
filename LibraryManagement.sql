create database library;
use library;

create table Material(
Material_ID numeric not null,
Title varchar(10),
Publication_Date date,
Catalog_ID numeric,
Genre_ID numeric,
primary key(Material_ID),
foreign key(Catalog_ID) references Catalog(Catalog_ID),
foreign key(Genre_ID) references Genre(Genre_ID)
);

create table Catalog(
Catalog_ID numeric,
Name Varchar(20),
Location Varchar(20));

create table Genre(
Genre_ID numeric,
Name Varchar(20),
Description Varchar(20));


create table Borrow(
Borrow_ID numeric not null,
Material_ID numeric,
Memeber_ID numeric,
Staff_ID numeric,
Borrow_Date date,
Due_Date date,
Return_Date date,
primary key(Borrow_ID),
foreign key(Material_ID) references Material(Material_ID),
foreign key(Member_ID) references Member(Member_ID),
foreign key(Staff_ID) references Staff(Staff_ID)
);


create table Author(
Author_ID numeric not null,
Name Varchar(20),
Birth_Date date,
Nationality varchar(10),
primary key(Author_ID));


create table Authorship(
Authorship_ID numeric not null,
Author_ID numeric,
Material_ID numeric,
primary key(Authorship_ID),
foreign key(Author_ID) references Author(Author_ID),
foreign key(Material_ID) references Material(Material_ID));


create table Member(
Member_ID numeric not null,
Name varchar(20),
Contact_Info varchar(30),
Join_Date date,
primary key(Member_ID)
);

create table Staff(
Staff_ID numeric not null,
Name varchar(20),
Contact_Info varchar(30),
Job_Title varchar(10),
Hire_Date date,
primary key(Staff_ID)
);







