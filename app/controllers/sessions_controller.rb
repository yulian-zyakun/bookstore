class SessionsController < ApplicationController
  def new
  end

  def create
    @customer = Customer.find_by(email: params[:session][:email])
    if @customer && @customer.password == params[:session][:password]
      log_in(@customer)
      redirect_to root_url
    else
      flash[:notice] = "The username is not found or password is incorrect."
      render 'new'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end

end
