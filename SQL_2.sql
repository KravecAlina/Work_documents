--SQL_DDL
--Первая часть.

--Таблица employees
--Создать таблицу employees
--- id. serial,  primary key,
--- employee_name. Varchar(50), not null

create table employees (	
		id serial primary key,
		employee_name varchar(50) not null
);

--Наполнить таблицу employee 70 строками.
insert into employees(employee_name) 
values ('Anna1'),
	   ('Anna2'),
	   ('Anna3'),
	   ('Anna4'),
	   ('Anna5'),
	   ('Boris1'),
	   ('Boris2'),
	   ('Boris3'),
	   ('Boris4'),
	   ('Boris5'),
	   ('Vladimir1'),
	   ('Vladimir2'),
	   ('Vladimir3'),
	   ('Vladimir4'),
	   ('Vladimir5'),
	   ('Greta1'),
	   ('Greta2'),
	   ('Greta3'),
	   ('Greta4'),
	   ('Greta5'),
	   ('Dmitriy1'),
	   ('Dmitriy2'),
	   ('Dmitriy3'),
	   ('Dmitriy4'),
	   ('Dmitriy5'),
	   ('Zendayai1'),
	   ('Zendayai2'),
	   ('Zendayai3'),
	   ('Zendayai4'),
	   ('Zendayai5'),
	   ('Igor1'),
	   ('Igor2'),
	   ('Igor3'),
	   ('Igor4'),
	   ('Igor5'),
	   ('Katerina1'),
	   ('Katerina2'),
	   ('Katerina3'),
	   ('Katerina4'),
	   ('Katerina5'),
	   ('Lera1'),
	   ('Lera2'),
	   ('Lera3'),
	   ('Lera4'),
	   ('Lera5'),
	   ('Michael1'),
	   ('Michael2'),
	   ('Michael3'),
	   ('Michael4'),
	   ('Michael5'),
	   ('Nina1'),
	   ('Nina2'),
	   ('Nina3'),
	   ('Nina4'),
	   ('Nina5'),
	   ('Olga1'),
	   ('Olga2'),
	   ('Olga3'),
	   ('Olga4'),
	   ('Olga5'),
	   ('Petr1'),
	   ('Petr2'),
	   ('Petr3'),
	   ('Petr4'),
	   ('Petr5'),
	   ('Rostislav1'),
	   ('Rostislav2'),
	   ('Rostislav3'),
	   ('Rostislav4'),
	   ('Rostislav5'),
	   ('Faina_1'),
	   ('Faina_2'),
	   ('Faina_3'),
	   ('Faina_4'),
	   ('Faina_5');

select * from employees;
delete from employees where employee_name like 'Faina%';

--Таблица salary
--Создать таблицу salary
--- id. Serial  primary key,
--- monthly_salary. Int, not null

create table salary (	
		id serial primary key,
		monthly_salary int not null
);

--Наполнить таблицу salary 15 строками:
insert into salary(monthly_salary) 
values (1000),
	   (1100),
	   (1200),
	   (1300),
	   (1400),
	   (1500),
	   (1600),
	   (1700),
	   (1800),
	   (1900),
	   (2000),
	   (2100),
	   (2200),
	   (2300),
	   (2400),
	   (2500);


select * from salary;

--Таблица employee_salary
--Создать таблицу employee_salary
--- id. Serial  primary key,
--- employee_id. Int, not null, unique
--- salary_id. Int, not null

create table employee_salary (	
		id serial primary key,
		employee_id int not null unique,
		salary_id int not null
		
);

--Наполнить таблицу employee_salary 40 строками:
--- в 10 строк из 40 вставить несуществующие employee_id

insert into employee_salary (employee_id, salary_id) 
values (75, 1),
	   (74, 2),
	   (73, 3),
	   (72, 4),
	   (71, 5),
	   (76, 6),
	   (77, 7),
	   (78, 8),
	   (79, 9),
	   (80, 10),
	   (1, 11),
	   (2, 12),
	   (3, 13),
	   (4, 14),
	   (5, 15),
	   (6, 16),
	   (7, 1),
	   (8, 2),
	   (9, 3),
	   (10, 4),
	   (11, 5),
	   (12, 6),
	   (13, 7),
	   (14, 8),
	   (15, 9),
	   (16, 10),
	   (17, 11),
	   (18, 12),
	   (19, 13),
	   (20, 14),
	   (21, 15),
	   (22, 16),
	   (23, 1),
	   (24, 2),
	   (25, 3),
	   (26, 4),
	   (27, 5),
	   (28, 6),
	   (29, 7),
	   (30, 8);
	  
select * from employee_salary;
	   

--Таблица roles
--Создать таблицу roles
--- id. Serial  primary key,
--- role_name. int, not null, unique

create table roles (	
		id serial primary key,
		role_name int not null unique			
);


--Поменять тип столба role_name с int на varchar(30)

ALTER TABLE roles ALTER COLUMN  role_name TYPE varchar(50);

--Наполнить таблицу roles 20 строками:

insert into roles (role_name) 
values ('Junior Python developer'),
 	   ('Middle Python developer'),
	   ('Senior Python developer'),
       ('Junior Java developer'),
       ('Middle Java developer'),
       ('Senior Java developer'),
       ('Junior JavaScript developer'),
       ('Middle JavaScript developer'),
       ('Senior JavaScript developer'),
       ('Junior Manual QA engineer'),
       ('Middle Manual QA engineer'),
       ('Senior Manual QA engineer'),
       ('Project Manager'),
       ('Designer'),
       ('HR'),
       ('CEO'),
       ('Sales manager'),
       ('Junior Automation QA engineer'),
       ('Middle Automation QA engineer'),
       ('Senior Automation QA engineer');

select * from roles;


--Таблица roles_employee

--Создать таблицу roles_employee
--- id. Serial  primary key,
--- employee_id. Int, not null, unique (внешний ключ для таблицы employees, поле id)
--- role_id. Int, not null (внешний ключ для таблицы roles, поле id)

create table roles_employee (	
		id serial primary key,
		employee_id int not null unique,
		role_id int not null,
		foreign key (employee_id)	
				references employees(id),
		foreign key (role_id)	
				references roles(id)	
);

--Наполнить таблицу roles_employee 40 строками:

insert into roles_employee (employee_id, role_id) 
values (1, 1),
	   (2, 2),
	   (3, 3),
	   (4, 4),
	   (5, 5),
	   (6, 6),
	   (7, 7),
	   (8, 8),
	   (9, 9),
	   (10, 10),
	   (11, 11),
	   (12, 12),
	   (13, 13),
	   (14, 14),
	   (15, 15),
	   (16, 16),
	   (17, 17),
	   (18, 18),
	   (19, 19),
	   (20, 20),
	   (21, 1),
	   (22, 2),
	   (23, 3),
	   (24, 4),
	   (25, 5),
	   (26, 6),
	   (27, 7),
	   (28, 8),
	   (29, 9),
	   (30, 10),
	   (31, 11),
	   (32, 12),
	   (33, 13),
	   (34, 14),
	   (35, 15),
	   (36, 16),
	   (37, 17),
	   (38, 18),
	   (39, 19),
	   (40, 20);
	  
	  select * from roles_employee;


