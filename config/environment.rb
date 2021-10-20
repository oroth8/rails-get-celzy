# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
    :port           => ENV['465'],
    :address        => ENV['smtp.mailgun.org'],
    :user_name      => ENV['owen@sandboxa13301e0a561430783039401f32c0445.mailgun.org'],
    :password       => ENV['2c1261c3f88c958b92b3b5b461b99c81-2bf328a5-e1687954'],
    :domain         => 'safe-anchorage-69988.herokuapp.com',
    :authentication => :plain,
  }
  ActionMailer::Base.delivery_method = :smtp
