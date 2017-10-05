# Load the Rails application.
require_relative 'application'
# require 'slack-ruby-client'

# Slack.configure do |config|
# 	config.token = ENV['SLACK_API_TOKEN']
# 	fail 'Missing ENV[SLACK_API_TOKENS]' unless config.token
# end

# Initialize the Rails application.
Rails.application.initialize!
