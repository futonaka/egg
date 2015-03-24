require 'rails_helper'
require 'turnip'
require 'turnip/capybara'
require 'turnip/rspec'
require 'capybara'
require 'capybara/poltergeist'

Capybara.default_driver    = :poltergeist
Capybara.javascript_driver = :poltergeist

Dir.glob("spec/**/*_steps.rb") { |f| load f, true }
