require 'cucumber'
require 'httparty'
require 'httparty/request'
require 'httparty/response/headers'
require 'rspec'
require 'date_format'
require 'faker'
require "json_matchers/rspec"
require "allure-cucumber"

schema_json = "feature/support/schemas/#{ENVIRONMENT}/*.json"
JsonMatchers.schema_root = schema_json

ENVIRONMENT = ENV['ENVIRONMENT']

CONFIG = YAML.load_file(File.dirname(__FILE__) + "/config/#{ENVIRONMENT}/*.yaml")

Dir[File.join(File.dirname(__FILE__),
              '../services/*_services.rb')].each { |file| require_relative file }