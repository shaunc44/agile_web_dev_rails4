# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

# Email configuration
Depot::Application.configure do
  config.action_mailer.delivery_method = :smtp #change the method to :test or :sendmail ??????

  config.action_mailer.default_url_options = { :host => 'localhost:3000' }

  config.action_mailer.smtp_settings = {
    address:              "smtp.live.com",
    port:                 "587",
    domain:               "mail.live.com",
    authentication:       "plain",
    user_name:            "seyyes2000",
    password:             "secret", #how to add secret password here, encrypt like in python?
    enable_starttls_auto: true
  }
end


