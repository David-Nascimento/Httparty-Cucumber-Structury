require 'cucumber'
require 'httparty'
require 'httparty/request'
require 'httparty/response/headers'
require 'rspec'
require 'date_format'
require 'faker'
require "json_matchers/rspec"
require "allure-cucumber"
require 'json'
require 'json-schema'

require_relative '../support/config/data'

Dir[File.join(File.dirname(__FILE__),
              '../services/*_services.rb')].each { |file| require_relative file }

JsonMatchers.schema_root = "/features/payload/schemas/"

Allure.configure do |c|
  c.results_directory = './allure-results/'
  c.clean_results_directory  = false
end