# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

# Email configuration
Depot::Application.configure do
  config.action_mailer.delivery_method = :smtp #change the method to :test or :sendmail ??????

  config.action_mailer.default_url_options = { :host => 'localhost:3000' }

  config.action_mailer.smtp_settings = {
    address:              "smtp.gmail.com",
    port:                 "587",
    domain:               "gmail.com",
    authentication:       "plain",
    user_name:            ENV["gmail_user_name"],
    password:             ENV["gmail_password"],
    enable_starttls_auto: true
  }
end


