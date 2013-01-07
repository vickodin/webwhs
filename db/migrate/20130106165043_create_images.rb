class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :name
      t.string :picture
      t.references :album

      t.timestamps
    end
    add_index :images, :album_id
  end
end
