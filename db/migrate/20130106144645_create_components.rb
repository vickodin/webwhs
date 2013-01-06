class CreateComponents < ActiveRecord::Migration
  def change
    create_table :components do |t|
      t.string :name, :null => false
      t.string :title
      t.text :content
      t.boolean :active, :null => false, :default => true

      t.timestamps
    end
  end
end
