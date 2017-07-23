require 'cucumber'
require 'rspec'
require 'capybara'
require 'selenium/webdriver'
require 'rake'
require 'capybara/cucumber'
require 'site_prism'
require 'pry'


Capybara.register_driver :selenium do |app|
                Capybara::Selenium::Driver.new(app, :browser => :chrome)
end

Capybara.configure do |config|
                config.default_driver = :selenium
                config.default_max_wait_time = 15
                Capybara.page.driver.browser.manage.window.maximize
end

=begin
profile = Selenium::WebDriver::Chrome::Profile.new
profile["intl.accept_languages"] = "de"

caps = Selenium::WebDriver::Remote::Capabilities.chrome(
  platform: "Linux",
  version: "",
  'chrome.profile' => profile.as_json['zip']
)

Selenium::WebDriver.for(:remote,
  url: "http://localhost:4446/wd/hub",
  desired_capabilities: caps
)
=end
