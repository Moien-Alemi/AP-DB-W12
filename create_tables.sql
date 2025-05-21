create database reserving_food;
use reserving_food;

create table people(
    id int auto_increment ,
    name varchar(20) not null ,
    national_id char(10) not null ,
    primary key (id)
);

create table students(
    id int auto_increment,
    person_id int ,
    student_number char(8) not null unique ,
    major varchar(20) not null ,
    primary key (id) ,
    foreign key (person_id) references people(id)
);

create table professors(
    id int auto_increment,
    person_id int ,
    service_number char(8) not null unique ,
    department varchar(20) not null ,
    scientific_degree varchar(20) not null ,
    primary key (id),
    foreign key (person_id) references people(id)
);

create table foods(
    id int auto_increment,
    name varchar(20) not null ,
    price int default 0,
    primary key (id)
);

create table menus(
    id int auto_increment,
    date date not null ,
    food_id int ,
    primary key (id),
    foreign key (food_id) references foods(id)
);

create table ordrers(
    id int auto_increment,
    menu_id int,
    person_id int,
    primary key (id),
    foreign key (menu_id) references menus(id),
    foreign key (person_id) references people(id)
);