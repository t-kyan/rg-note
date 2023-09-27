class CreateCustomers < ActiveRecord::Migration[6.0]
  def change
    create_table :customers do |t|
      t.references :user, null: false, foreign_key: true
      t.string :name, null: false
      t.string :name_kana, null: false
      t.date :coming_date, null: false
      t.date :birth_date
      t.string :company
      t.string :phone
      t.text :address
      t.string :friend
      t.string :server
      t.text :memo
      t.timestamps
    end
  end
end
