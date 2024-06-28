# frozen_string_literal: true

# This file is copied to spec/ when you run 'rails generate rspec:install'
require 'spec_helper'

ENV['RAILS_ENV'] = 'test'
require_relative '../config/environment'
# Prevent database truncation if the environment is production
abort('The Rails environment is running in production mode!') if Rails.env.production?
require 'rspec/rails'
require 'faker'
Dir[Rails.root.join('spec', 'support', '**', '*.rb')].each { |f| require f }
Dir[Rails.root.join('spec', 'assets', '**', '*.rb')].each { |f| require f }

begin
  ActiveRecord::Migration.maintain_test_schema!
rescue ActiveRecord::PendingMigrationError => e
  abort e.to_s.strip
end

# VCR.configure do |config|
#   config.cassette_library_dir = 'spec/vcr_cassettes'
#   config.hook_into :webmock
#   config.configure_rspec_metadata!
#   config.allow_http_connections_when_no_cassette = true
# end

# WebMock.disable_net_connect!(allow_localhost: true)

# RSpec.configure do |config|
#   config.infer_spec_type_from_file_location!
#   config.filter_rails_from_backtrace!
#   config.use_instantiated_fixtures = false
#   config.use_transactional_fixtures = true

#   config.include FactoryBot::Syntax::Methods
#   config.include Devise::Test::ControllerHelpers, type: :controller
#   config.include Devise::Test::ControllerHelpers, type: :view
#   config.include Devise::Test::IntegrationHelpers, type: :request
#   config.include Devise::Test::IntegrationHelpers, type: :model

#   config.before(:each) do
#     Sidekiq::Worker.clear_all
#     stub_request(:put, /hive-staging.s3.eu-west-1.amazonaws.com:443/).to_return(status: 200)
#     stub_request(:post, /hive-staging.s3.eu-west-1.amazonaws.com:443/).to_return(status: 200)
#     stub_request(:get, /hive-staging.s3.eu-west-1.amazonaws.com:443/).to_return(status: 200)
#     stub_request(:delete, /hive-staging.s3.eu-west-1.amazonaws.com:443/).to_return(status: 200)
#   end

#   config.before(:suite) do
#     Sidekiq::Testing.fake!
#   end

#   config.around(:each, :sidekiq_inline) do |example|
#     Sidekiq::Testing.fake! { example.run }
#   end
# end

Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :active_record
    with.library :active_model
  end
end
