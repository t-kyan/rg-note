class CustomerBottle
  include ActiveModel::Model
  attr_accessor :name, :name_kana, :coming_date, :birth_date, :company, :phone, :address, :friend, :server, :memo, :bottle_name, :control_number, :amount_in_bottle, :opening_date, :user_id

  with_options presence: true do
    validates :name
    validates :name_kana, format: {with: /\A[ァ-ヶー]+\z/}
    validates :user_id
  end
  validates :coming_date, presence: { message: "can't be blank" }
  validates :phone, format: { with: /\A\d{10,11}\z/ }, allow_blank: true

  def save
    customer = Customer.create(user_id: user_id, name: name, name_kana: name_kana, coming_date: coming_date, birth_date: birth_date, company: company, phone: phone, address: address, friend: friend,
    server: server, memo: memo, image: image)
    Bottle.create(bottle_name: bottle_name, control_number: control_number, amount_in_bottle: amount_in_bottle, opening_date: opening_date, customer_id: customer.id)
  end

end