ENV['RAILS_ENV'] ||= 'test'
require_relative '../config/environment'
require 'rails/test_help'
require 'minitest/rails'
require 'minitest/autorun'
require 'minitest/reporters'

require "pry"
require "simplecov"
SimpleCov.start do
  add_filter 'test/' # Tests should not be checked for coverage.
end
SimpleCov.start

#  For colorful output!
Minitest::Reporters.use!(
Minitest::Reporters::SpecReporter.new,
ENV,
Minitest.backtrace_filter
)

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
  fixtures :all
  
  # Add more helper methods to be used by all tests here...
end
