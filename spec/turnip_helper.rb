require 'rails_helper'
require 'turnip'
require 'turnip/capybara'
require 'turnip/rspec'
require 'capybara'
require 'support/driver_settings'

# 複数マッチした場合の動作
# Ref: https://github.com/willnet/capybara-readme-ja#strategy
# エラーとはせず最初の要素を使用する
Capybara.match = :first

Dir.glob("spec/**/*_steps.rb") { |f| load f, true }

# for CapturefulFormatter
# https://github.com/crowdworks/captureful_formatter
CapturefulFormatter.configure do |config|
  config.project_name = "Test result report" # Title of test report
  config.output_directory = "./spec/result" # The path to where the test report is saved.
  #config.template_path = "path/to/template" # your custom template file path.
end
