Rails.configuration.stripe = {
  #:publishable_key => ENV['PUBLISHABLE_KEY'],
  #:secret_key      => ENV['SECRET_KEY']
  :publishable_key => "pk_test_5Bcj5O8FV10mRlOjRF3UsjrP",
  :secret_key      => "sk_test_a3yalEbjbvOPKiOyyixBrRGb"
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
