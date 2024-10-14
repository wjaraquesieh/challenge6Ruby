# Creation of Customer controller with actions
class CustomersController < ApplicationController
  # index to list all the info on the table
  def index
    @customers = Customer.all
  end

  # lst the customers orderd by name
  def alphabetized
    @customers = Customer.order(:full_name)
  end

  # find the customer where the email is missing
  def missing_email
    @customers = Customer.where(email_address: [nil, ''])
  end

  # Methods to create a new customer
  def new
    @customer = Customer.new
  end

  def create
    @customer = Customer.new(customer_params)

    if @customer.save
      redirect_to customers_path, notice: 'Customer created successfully!'
    else
      render :new
    end
  end

  private

  # Strong parameters to allow the creation of customer
  def customer_params
    params.require(:customer).permit(:full_name, :phone_number, :email_address, :notes, :image)
  end
end
