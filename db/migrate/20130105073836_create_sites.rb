class CreateSites < ActiveRecord::Migration
  def change
    create_table :sites do |t|
      t.string :name, :null => false
      t.string :title
      t.boolean :active, :null => false, :default => false
      t.boolean :translit, :null => false, :default => true
      t.text :head
      t.text :footer
      t.references :user, :null => false

      t.timestamps
    end
    add_index :sites, :user_id
  end
end
