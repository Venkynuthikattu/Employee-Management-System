select * from employee_demographics;
select * from employee_salary;
select * from parks_departments;

select * from employee_demographics
where gender = 'male' and age > 26;

select * from employee_demographics
where first_name = "Akhil" or gender = "female";

select * from employee_demographics
where first_name = "anjali" or not gender =  "female";

select * from employee_demographics 
where (age < 29 and gender = "male") or birth_date = "1996-02-25";

select * from employee_salary
where first_name like "a%";

select * from employee_salary
where occupation like "%a%";

select * from employee_salary
where salary like "4____";

select * from employee_salary
where salary like "3___%";

select * from employee_demographics
where birth_date like "1%";

select * from employee_demographics
where birth_date like "2%";
