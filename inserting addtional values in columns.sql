select * from employee_salary;

insert into employee_salary (employee_id, first_name,last_name,occupation,salary,dept_id)
values ( 11,"Aman","Agrwal","Data Analyst",30000,1),
(12,"Rohini","Naik","Devops Engineer",50000,1),
(13,"Ramya","Reddy","Fullstack Developer",55000,1),
(14,"Karthik","Goud","Manager",60000,3),
(15,"Kriti","Kaur","Excutive",40000,2);

select * from employee_demographics;

insert into employee_demographics (employee_id, first_name,last_name,age,gender,birth_date)
values ( 11,"Aman","Agrwal",28,"Male","1998-02-23"),
(12,"Rohini","Naik",28,"Female","1997-07-25"),
(13,"Ramya","Reddy",25,"Female","2000-09-28"),
(14,"Karthik","Goud",30,"Male","1996-02-05"),
(15,"Kriti","Kaur",26,"Female","2000-02-25");
