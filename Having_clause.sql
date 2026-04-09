
select * from employee_demographics;

select gender, avg(age)
from employee_demographics
group by gender
having avg(age) > 25;

select * from employee_salary;

select occupation , avg(salary)
from employee_salary
group by occupation
having avg(salary) > 30000 ;

select occupation , avg(salary)
from employee_salary
group by occupation
having avg(salary) <= 30000 ;

select occupation , avg(salary)
from employee_salary
where occupation like '%Analyst'
group by occupation
having avg(salary);
