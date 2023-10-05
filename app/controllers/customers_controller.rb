class CustomersController < ApplicationController
  before_action :authenticate_user!, only: [:index, :new, :create]

  def index
    @customers = Customer.all
  end

  def new
    @customer_bottle = CustomerBottle.new
  end

  def create
    @customer_bottle = CustomerBottle.create(customer_params)
    if @customer_bottle.valid?
      @customer_bottle.save
      redirect_to customer_path
    else
      render :new
    end
  end

  private

  def customer_params
    params.require(:customer_bottle).permit(user_id: user_id, name: name, name_kana: name_kana, coming_date: coming_date, birth_date: birth_date, company: company, phone: phone, address: address, friend: friend,
      server: server, memo: memo,bottle_name: bottle_name, control_number: control_number, amount_in_bottle: amount_in_bottle, opening_date: opening_date).merge(user_id: current_user.id,  customer_id: params[:customer_id])
  end
end
