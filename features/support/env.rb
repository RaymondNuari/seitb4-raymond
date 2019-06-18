require 'cucumber/rails'
require 'capybara/rspec'
require 'rspec/core'
require 'uri'
require "selenium/webdriver"
require "sauce_whisk"

Capybara.register_driver :selenium_chrome do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome)
end
Capybara.default_driver = :selenium_chrome
# Capybara.default_driver = :selenium
Capybara.javascript_driver = :selenium_chrome
# Capybara.javascript_driver = :selenium
Capybara.default_max_wait_time = 50
Capybara.current_driver = :selenium_chrome
# Capybara.current_driver = :selenium

module Capybara
  class << self
    attr_accessor :session_id, :remote_automation_platform
  end
end

Before '@javascript' do |scenario|
 @scenario_name = scenario.feature.name
 # page.driver.browser.manage.window.maximize
page.driver.browser.manage.window.resize_to(1360, 960)
#end



# Before '@javascript' do |scenario|
#  @scenario_name = scenario.feature.name
#
# #  before(:each) do |test|
#     caps = {
#         browser_name: 'firefox',
#         platform_name: 'windows 10',
#         browser_version: '66.0',
# #{        }"goog:chromeOptions" => {w3c: true},
#         "sauce:options" => {
#             build: 'just sample',
#             name: 'test connect saucelabs',
#             seleniumVersion: '3.141.59',
#             username: 'erkie24',
#             accessKey: "381cd8b0-e906-418a-a0d2-2d6fc8b4fddc",
#             #maxDuration: 1800,
#             #commandTimeout: 300,
#             #idleTimeout: 1000
#         }
#     }
#     Capybara.register_driver :selenium do |app|
#       Capybara::Selenium::Driver.new(app, browser: :remote,
#         url: 'https://ondemand.saucelabs.com:443/wd/hub',
#         desired_capabilities: caps)
#     end
#
  end
