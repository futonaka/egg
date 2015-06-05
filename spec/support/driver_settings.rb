#require 'capybara/poltergeist'
require 'selenium-webdriver'
require 'yaml'

# yaml ファイルから設定情報を読み込み
test_settings = YAML.load_file(File.join(File.expand_path("..", File.dirname(__FILE__)), "test_settings.yml"))

Capybara.register_driver :firefox do |app|
  caps = Selenium::WebDriver::Remote::Capabilities.firefox
  host = test_settings["firefox"]["host"]
  port = test_settings["firefox"]["port"]
  Capybara::Selenium::Driver.new(app, {desired_capabilities: caps, browser: :remote, url: "http://#{host}:#{port}/wd/hub"})
end

Capybara.register_driver :ie do |app|
  caps = Selenium::WebDriver::Remote::Capabilities.internet_explorer
  host = test_settings["ie"]["host"]
  port = test_settings["ie"]["port"]
  Capybara::Selenium::Driver.new(app, {desired_capabilities: caps, browser: :remote, url: "http://#{host}:#{port}/wd/hub"})
end

Capybara.register_driver :chrome do |app|
  caps = Selenium::WebDriver::Remote::Capabilities.chrome
  host = test_settings["chrome"]["host"]
  port = test_settings["chrome"]["port"]
  Capybara::Selenium::Driver.new(app, {desired_capabilities: caps, browser: :remote, url: "http://#{host}:#{port}/wd/hub"})
end

Capybara.default_driver    = test_settings["execute_browser"].to_sym
#Capybara.default_driver    = :selenium
#Capybara.default_driver    = :poltergeist
#Capybara.javascript_driver = :poltergeist
