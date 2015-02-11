Rails.configuration.stripe = {
  :publishable_key => ENV['pk_test_AEPZo8whqxJ6hMOoFap1hHG5'],
  :secret_key      => ENV['sk_live_o40G9QggoHBn1CMJw4GCSJlx']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
