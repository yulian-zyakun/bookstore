class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  #login functionality
  include SessionsHelper

  #shopping cart
  helper_method :current_order

  def current_order
    if !session[:order_id].nil?
      Order.find(session[:order_id])
    else
      Order.new(customer_id: 1, pst_rate: 0.08, gst_rate: 0.05)
    end
  end
end
