Dado(/^que eu esteja logado na home OrangeHRM$/) do
  page = LoginPage.new
  page.load
  page.log_in("Admin", "admin")

end

Quando(/^cadastrar um funcionario$/) do
  page = Employee.new
  page.load
  page.add_employee("nov1", "nov2Last")
end

Entao(/^funcionario cadastrado com sucesso$/) do
  page = Employee.new
  page.sucess_add_employee
end
