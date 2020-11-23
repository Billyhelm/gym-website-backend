class CreateUsers < ActiveRecord::Migration[6.0]
  def change
    create_table :users do |t|
      t.string :name 
      t.string :email 
      t.string :password_digest 
      t.string :security_question 
      t.string :security_answer
      t.string :image
      t.string :status


      t.timestamps
    end
  end
end
