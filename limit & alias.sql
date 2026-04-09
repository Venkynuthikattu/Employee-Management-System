select * from employee_salary;

select occupation ,salary
from employee_salary
order by salary;

select first_name ,occupation,salary
from employee_salary
order by salary desc
limit 5;

select * from employee_demographics;

select gender , avg(age) as avg_age
from employee_demographics
group by gender
having avg_age;

select occupation , avg(salary) as avg_salary
from employee_salary
group by occupation
having avg_salary;
