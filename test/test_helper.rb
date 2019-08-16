
require_relative '../config/environment'
require 'simplecov'
require 'codecov'
SimpleCov.formatter = SimpleCov::Formatter::Codecov
SimpleCov.start

require 'rails/test_help'
require 'minitest/reporters'
MiniTest::Reporters.use! [MiniTest::Reporters::ProgressReporter.new,
                          MiniTest::Reporters::JUnitReporter.new]
ENV["RAILS_ENV"] = "test"

class ActiveSupport::TestCase
  # Setup all fixtures in test/fixtures/*.(yml|csv) for all tests in alphabetical order.
  fixtures :all
  # Run tests in parallel with specified workers
  parallelize(workers: :number_of_processors)
  # Add more helper methods to be used by all tests here...
  include ApplicationHelper
end
