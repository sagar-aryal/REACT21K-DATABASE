use companydb4;

select lastname, firstname,departmentName, positionName from employee
join employeeOfDepartment on employeeOfDepartment.employeeId=employee.employeeId
join department on employeeOfDepartment.departmentId=department.departmentId
join employeePosition on employeeOfDepartment.positionId=employeePosition.positionId
order by lastname,firstname, departmentName;

select departmentName,lastname, firstname, positionName from employee
join employeeOfDepartment on employeeOfDepartment.employeeId=employee.employeeId
join department on employeeOfDepartment.departmentId=department.departmentId
join employeePosition on employeeOfDepartment.positionId=employeePosition.positionId
order by departmentName, positionName, lastname,firstname;