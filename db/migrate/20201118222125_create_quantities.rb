class CreateQuantities < ActiveRecord::Migration[6.0]
  def change
    create_table :quantities do |t|
      t.integer :product_id
      t.integer :size_id
      t.integer :amount

      t.timestamps
    end
  end
end
