class CustomersController < ApplicationController
  before_action :authenticate_user!, only: [:index, :new, :create]

  def index
    @customers = Customer.all
  end

  def new
    @customer_bottle = CustomerBottle.new
  end

  def create
    @customer_bottle = CustomerBottle.new(customer_params)
    if @customer_bottle.valid?
      @customer_bottle.save
      redirect_to customers_path
    else
      render :new
    end
  end

  private

  def customer_params
    params.require(:customer_bottle).permit(:name, :name_kana, :coming_date, :birth_date, :company, :phone, :address, :friend,
      :server, :memo, :image, :bottle_name, :control_number, :amount_in_bottle, :opening_date).merge(user_id: current_user.id)
  end
end
