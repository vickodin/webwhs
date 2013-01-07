class CreateSeos < ActiveRecord::Migration
  def change
    create_table :seos do |t|
      t.string :title
      t.text :keywords
      t.text :description
      t.string :extra_type
      t.integer :extra_id

      t.timestamps
    end
  end
end
