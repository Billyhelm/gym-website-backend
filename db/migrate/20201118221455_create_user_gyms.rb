class CreateUserGyms < ActiveRecord::Migration[6.0]
  def change
    create_table :user_gyms do |t|
      t.integer :user_id
      t.integer :gym_id

      t.timestamps
    end
  end
end
