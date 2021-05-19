use companydb2;
select * from department;
select * from employee;
select * from headOfDepartment;

select firstname,lastname,departmentName from employee
join headOfDepartment on headOfDepartment.employeeId=employee.employeeId
join department on headOfDepartment.departmentId=department.departmentId;

select lastname, firstname, departmentName from employee
join headOfDepartment on headOfDepartment.employeeId=employee.employeeId
join department on headOfDepartment.departmentId=department.departmentId
order by lastname,firstname,departmentName;,

select lastname, firstname, departmentName from employee
join headOfDepartment on headOfDepartment.employeeId=employee.employeeId
join department on headOfDepartment.departmentId=department.departmentId
order by lastname,firstname,departmentName desc;

delete from headOfDepartment where departmentId=5;
select * from headOfDepartment;

select departmentName, firstname, lastname from department
left join headOfDepartment on headOfDepartment.departmentId=department.departmentId
left join employee on headOfDepartment.employeeId=employee.employeeId;

select departmentName, firstname, lastname from department
left join headOfDepartment on headOfDepartment.departmentId=department.departmentId
left join employee on headOfDepartment.employeeId=employee.employeeId
order by departmentName;
