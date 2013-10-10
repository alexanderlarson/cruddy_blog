class CreateUsers < ActiveRecord::Migration
  def change
      create_table :users do |t|
        t.string :username, :null => false
        t.string :email, :null => false
        t.string :password_hash, :null => false
        t.integer :post_id
        t.timestamps
      end
  end
end
