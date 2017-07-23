class LoginPage < SitePrism::Page

    set_url "http://opensource.demo.orangehrmlive.com/"

    element :txt_username, "input[id='txtUsername']"
    element :txt_password, "input[id='txtPassword']"
    element :btn_login, "input[id='btnLogin']"

    def log_in(username, password)
      txt_username.set(username)
      txt_password.set(password)
      btn_login.click
    end
end
