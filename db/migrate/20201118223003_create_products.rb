class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :name 
      t.string :color 
      t.string :gender 
      t.float :price
      t.string :image
      t.text :description

      t.timestamps
    end
  end
end
