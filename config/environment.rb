# Load the Rails application.
require_relative "application"

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
    :port           => ENV['SMTP_PORT'],
    :address        => ENV['SMTP_ADDRESS'],
    :user_name      => ENV['SMTP_LOGIN'],
    :password       => ENV['SMTP_PASSWORD'],
    :domain         => 'safe-anchorage-69988.herokuapp.com',
    :authentication => :plain,
  }
  ActionMailer::Base.delivery_method = :smtp
