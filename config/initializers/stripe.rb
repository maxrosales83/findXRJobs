Rails.configuration.stripe = {
  :publishable_key => ENV['stripe_publishable_key'],
  :secret_key      => ENV['stripe_api_key']
}

#Stripe.api_key = ENV['stripe_api_key']
Stripe.api_key = Rails.application.credentials.stripe[:secret_key]