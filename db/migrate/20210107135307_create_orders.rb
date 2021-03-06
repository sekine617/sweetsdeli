class CreateOrders < ActiveRecord::Migration[5.2]
  def change
    create_table :orders do |t|
      t.references :user, foreign_key: true
      t.integer :postcode, null: false
      t.integer :prefecture_code, null: false
      t.string :address_city, null: false
      t.string :address_street, null: false
      t.string :address_building
      t.date :receipt_date, null: false
      t.integer :receipt_time, null: false
      t.integer :total_price, null: false

      t.timestamps
    end
  end
end
