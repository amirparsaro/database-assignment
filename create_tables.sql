create database self;

use self;

create table users
(
    id          int primary key auto_increment,
    name        nvarchar(255) not null,
    national_id nvarchar(255) not null
);

create table students
(
    id         int primary key auto_increment,
    student_id nvarchar(255) not null,
    major      nvarchar(255) not null,
    user_id    int           not null,
    foreign key (user_id) references users (id)
);

create table professors
(
    id            int primary key auto_increment,
    professor_id  nvarchar(255) not null,
    department    nvarchar(255) not null,
    academic_rank nvarchar(255) not null,
    user_id       int           not null,
    foreign key (user_id) references users (id)
);

create table foods
(
    id    int primary key auto_increment,
    name  nvarchar(255) not null,
    price bigint        not null
);

create table days
(
    id        int primary key auto_increment,
    food_id   int                                                                                 not null,
    week_days enum ('Saturday', 'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday') not null,
    foreign key (food_id) references foods (id)
);

create table orders
(
    id      int primary key auto_increment,
    week_days enum ('Saturday', 'Sunday', 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday') not null,
    food_id int not null,
    amount  int not null,
    user_id int not null,
    foreign key (food_id) references foods (id),
    foreign key (user_id) references users (id)
);
