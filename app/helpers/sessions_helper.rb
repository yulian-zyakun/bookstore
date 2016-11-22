module SessionsHelper
  def log_in(customer)
    session[:customer_id] = customer.id
    session[:customer_name] = customer.full_name
  end

  def log_out
    reset_session
  end
end
