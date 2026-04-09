select * from employee_demographics;

select gender
from employee_demographics
group by gender;

select gender, avg(age)
from employee_demographics
group by gender;

select gender, avg(age), max(age),min(age),count(age)
from employee_demographics
group by gender;

select birth_date,count(age)
from employee_demographics
group by birth_date;

select * from employee_salary;

select salary ,count(salary)
from employee_salary
group by salary;

select dept_id ,occupation
from employee_salary
group by dept_id,occupation;

select dept_id ,count(dept_id)
from employee_salary
group by dept_id;

select age ,birth_date
from employee_demographics
order by age desc , birth_date;

select first_name  
from employee_demographics
order by first_name;

select last_name  
from employee_demographics
order by last_name;

select last_name  , count(last_name)
from employee_demographics
group by last_name;

select * from parks_departments;
