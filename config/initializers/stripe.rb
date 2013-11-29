if Rails.env.production?
  Rails.configuration.stripe = {
    :publishable_key => ENV['STRIPE_PUBLISHABLE_KEY'],
    :secret_key      => ENV['STRIPE_SECRET_KEY']
  }
else
  Rails.configuration.stripe = {
    :publishable_key => 'pk_test_rWTu8a6cRKFCdqOzYdpSK7JA',
    :secret_key      => 'sk_test_IGmm9mfvPFm4TRGr3HOclilr'
  }
end

Stripe.api_key = Rails.configuration.stripe[:secret_key]
