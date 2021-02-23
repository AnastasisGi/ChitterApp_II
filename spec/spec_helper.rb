ENV['APP_ENV'] = 'test'

require 'capybara/rspec'
require './app'
require 'simplecov'
require 'simplecov-console'
require 'database_cleaner/active_record'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::HTMLFormatter,
  SimpleCov::Formatter::Console,
])



SimpleCov.start




Capybara.app=ChitterApp 


RSpec.configure do |config|

    config.before(:suite) do
      DatabaseCleaner.strategy = :transaction
      DatabaseCleaner.clean_with(:truncation)
    end
  
    config.around(:each) do |example|
      DatabaseCleaner.cleaning do
        example.run
      end
    end
  
  end
  