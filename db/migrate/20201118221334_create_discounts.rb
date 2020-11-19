class CreateDiscounts < ActiveRecord::Migration[6.0]
  def change
    create_table :discounts do |t|
      t.string :code 
      t.string :type
      t.float :amount

      t.timestamps
    end
  end
end
