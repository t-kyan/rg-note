class CreateBottles < ActiveRecord::Migration[6.0]
  def change
    create_table :bottles do |t|
      t.references :customer, null: false, foreign_key: true
      t.string :bottle_name
      t.integer :control_number, unique: true
      t.string :amount_in_bottle
      t.date :opening_date
      t.timestamps
    end
  end
end
