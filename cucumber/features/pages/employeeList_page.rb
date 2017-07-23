class EmployeeList < SitePrism::Page
  
    set_url "http://opensource.demo.orangehrmlive.com/index.php/pim/viewEmployeeList"
    
    element :btn_search, "input[id='searchBtn']"
    element :txt_employee_id, "input[id='empsearch_id']"

    def search_employee_id
        txt_employee_id.set($employee_id)
        btn_search.click
    end

    def select_employee
        click_link($employee_id)
    end    
end
