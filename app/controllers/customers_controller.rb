class CustomersController < ApplicationController
  def index
    @customer = Customer.order(:full_name)
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)

    if @customer.save
      redirect_to show_customer_path(@customer)
    else
      render :new
    end
  end

  def login
  end

  private

  def customer_params
    params.require(:customer).permit(:full_name,:address,:city,:postal_code,:email,:phone_number,:password,:notes)
  end

end
