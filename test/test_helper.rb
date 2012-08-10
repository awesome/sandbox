# taken from http://code-ningja.posterous.com/73460416
# minitest/spec + capybara/rails
# test/test_helper.rb

require 'spork'

Spork.prefork do

  # Environment.
  ENV["RAILS_ENV"] = "test"
  require File.expand_path('../../config/environment', __FILE__)

  # MiniTest and Capybara.
  require 'minitest/autorun'
  require 'minitest/pride'
  require 'capybara/rails'

  # Miniskirt and factories
  #require 'miniskirt'
  # require 'factory_girl'
  # Factory.find_definitions

  # Require ruby files in support dir.
  Dir[File.expand_path('test/support/*.rb')].each { |file| require file }

  # Database cleaner.
  DatabaseCleaner.strategy = :truncation
  class MiniTest::Spec
    before :each do
      DatabaseCleaner.clean
    end
  end

  # If description name ends with 'integration', use this RequestSpec class.
  # It has all the integration test goodies.
  class RequestSpec < MiniTest::Spec
    include Rails.application.routes.url_helpers
    include Capybara::DSL
    include IntegrationHelpers
  end
  MiniTest::Spec.register_spec_type /integration$/i, RequestSpec

end   #spork

Spork.each_run do

  FactoryGirl.reload
  Rails.application.reload_routes!

end

