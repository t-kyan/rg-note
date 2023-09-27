class CustomersController < ApplicationController
  before_action :authenticate_user!, only: [:index, :new]

  def index
    @customers = Customer.all
  end

  def new
    @Customer = Customer.new
  end
end
