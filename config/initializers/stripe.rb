Rails.configuration.stripe = {
  :publishable_key => 'pk_test_vok5Apo2sZXtdZ6ZZHqfFrtD',
  :secret_key      => 'sk_test_xfc6waqs1vOBQRoy5GVOMiFF'
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]