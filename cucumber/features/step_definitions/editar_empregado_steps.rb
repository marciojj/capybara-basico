# encoding: utf-8

Dado(/^que eu esteja na home do funcionario$/) do
  page = EmployeeList.new
  page.load
  page.search_employee_id
  page.select_employee
end

Quando(/^edito dados do funcionario$/) do
  page = Employee.new
  page.modify_employee("nov1Alt", "nov2LastAlt")
end

Entao(/^altero dados com sucesso$/) do
  page = Employee.new
  page.sucess_modify_employee
end