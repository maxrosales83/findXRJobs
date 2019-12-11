require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module JobBoard
  class Application < Rails::Application
    config.active_job.queue_adapter = :sidekiq
    config.application_name = 'XRloaded'
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1
   
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.action_mailer.default_url_options = {host: 'https://www.xrloaded.com'}
    config.action_mailer.default charset: 'utf-8'
    config.action_mailer.delivery_method = 'smtp'
    config.action_mailer.perform_deliveries = true
    config.action_mailer.smtp_settings = {
      adress: $SMTP_SERVER,
      port: $PORT,
      from: $MAIL,
    
      enable_starttls_auto: true
  #authentication: 'login'
}
  end
end
