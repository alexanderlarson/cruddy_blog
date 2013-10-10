class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.text :title
      t.text :content
      t.integer :user_id
      t.string :tag_id
      t.timestamps
    end
  end
end
