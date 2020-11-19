class CreateOrderDiscounts < ActiveRecord::Migration[6.0]
  def change
    create_table :order_discounts do |t|
      t.integer :discount_id 
      t.integer :order_id 

      t.timestamps
    end
  end
end
