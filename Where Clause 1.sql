select * from employee_demographics;
select * from employee_salary;
select * from parks_departments;

select * from employee_demographics
where first_name = "Akhil";

select * from employee_demographics
where gender = "male"; 

select * from employee_demographics
where gender = "female"; 

select * from employee_salary
where dept_id = 1;

select * from employee_salary
where dept_id = 2;

select * from employee_salary
where dept_id = 3;

select * from employee_salary
where salary > 40000;

select * from employee_demographics
where age > 25;

select * from employee_demographics
where age = 26;

select * from employee_demographics
where birth_date = "2000-02-25";
