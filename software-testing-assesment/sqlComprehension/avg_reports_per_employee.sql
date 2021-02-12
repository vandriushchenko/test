select avg(reports_to) as average_number_of_reports_per_employee, 
		(select count(*) from employees where reports_to > (select avg(reports_to) from employees)) as count_of_employees 
from employees