class CreateSeos < ActiveRecord::Migration
  def change
    create_table :seos do |t|
      t.string :title
      t.text :keywords
      t.text :description
      t.string :extra_type, :limit => 32, :null => false
      t.integer :extra_id, :null => false

      t.timestamps
    end
    add_index :seos, :extra_type
    add_index :seos, :extra_id
  end
end
