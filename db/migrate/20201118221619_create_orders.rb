class CreateOrders < ActiveRecord::Migration[6.0]
  def change
    create_table :orders do |t|
      t.float :sub_total
      t.float :total 
      t.string :status 

      t.timestamps
    end
  end
end
