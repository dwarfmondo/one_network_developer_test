select department.name, count(employee.id) AS count
from department
inner join employee on employee.dept_id = department.dept_id
group_by department.dept_id;
