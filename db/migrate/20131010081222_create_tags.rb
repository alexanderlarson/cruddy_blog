class CreateTags < ActiveRecord::Migration
  def change
      create_table :tags do |t|
        t.string :name, :null => false
        t.string :post_id
        t.timestamps
      end
  end
end
