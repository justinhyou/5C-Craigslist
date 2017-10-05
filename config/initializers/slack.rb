require 'slack-ruby-client'

# Slack.configure do |config|
# 	config.token = ENV['SLACK_API_TOKEN']
# 	fail 'Missing ENV[SLACK_API_TOKENS]' unless config.token
# end

# client = Slack::Web::Client.new
# client.auth_test

# client.chat_postMessage(channel: '#posts', text: 'Hellow World', as_user: true)