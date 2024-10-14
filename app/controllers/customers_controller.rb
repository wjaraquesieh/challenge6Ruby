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
end
