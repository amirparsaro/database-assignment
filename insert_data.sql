use self;

#Creating users
insert into users (name, national_id)
values ('parsa', '1234567890');

insert into users (name, national_id)
values ('mamad', '0987654321');

insert into users (name, national_id)
values ('ali', '1029384756');

#Creating students and professors
insert into students (student_id, major, user_id)
values ('40313419', 'CS', 1);

insert into students (student_id, major, user_id)
values ('12345678', 'Math', 2);

insert into professors (professor_id, department, academic_rank, user_id)
values ('123456', 'Math', 'professor', 2);

insert into professors (professor_id, department, academic_rank, user_id)
values ('654321', 'CS', 'assistant professor', 3);

#Creating self's foods
insert into foods (name, price)
values ('ghorme sabzi', '20000');

insert into foods (name, price)
values ('gheime', '20000');

insert into foods (name, price)
values ('koobideh', '30000');

insert into foods (name, price)
values ('joojeh', '30000');

#linking foods with week days
insert into days (food_id, week_days)
values (1, 'Saturday'), (1, 'Sunday'), (1, 'Monday');

insert into days (food_id, week_days)
values (2, 'Tuesday'), (2, 'Wednesday'), (2, 'Thursday');

insert into days (food_id, week_days)
values (3, 'Saturday'), (3, 'Monday'), (3, 'Wednesday');

insert into days (food_id, week_days)
values (4, 'Sunday'), (4, 'Tuesday'), (4, 'Thursday');

#Placing orders for foods
insert into orders (week_days, food_id, amount, user_id)
values ('Sunday', 1, 2, 1);

insert into orders (week_days, food_id, amount, user_id)
values ('Saturday', 3, 1, 2);

insert into orders (week_days, food_id, amount, user_id)
values ('Tuesday', 4, 1, 3);