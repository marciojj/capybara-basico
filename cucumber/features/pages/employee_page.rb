class Employee < SitePrism::Page

    set_url "http://opensource.demo.orangehrmlive.com/index.php/pim/addEmployee"

    #Add employee element
    element :txt_first_name, "input[id='firstName']"
    element :txt_last_name, "input[id='lastName']"
    element :btn_save, "input[id='btnSave']"
    element :id_employee, "input[id='personal_txtEmployeeId']"

    #Edit employ element
    element :txt_first_name_edit, "input[id='personal_txtEmpFirstName']"
    element :txt_last_name_edit, "input[id='personal_txtEmpLastName']"

    def add_employee(firstname, lastname)
        txt_first_name.set(firstname)
        txt_last_name.set(lastname)
        $full_name = firstname + " " + lastname
        btn_save.click
        $employee_id = id_employee.value
    end

    def sucess_add_employee
        assert_text($full_name)
    end

    def modify_employee(firstname, lastname)
        btn_save.click
        txt_first_name_edit.set(firstname)
        txt_last_name_edit.set(lastname)
        $full_name_modify = firstname + " " + lastname
        btn_save.click
    end

    def sucess_modify_employee
        assert_text($full_name_modify)
    end
end
