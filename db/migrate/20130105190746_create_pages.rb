class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :name
      t.text :content
      t.integer :site_id
      t.string :code
      t.string :url
      t.integer :parent_id
      t.integer :lft
      t.integer :rgt
      t.integer :depth
      t.boolean :system
      t.string :redirect
      t.boolean :menu

      t.timestamps
    end
  end
end
