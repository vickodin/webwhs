class CreateReviews < ActiveRecord::Migration
  def change
    create_table :reviews do |t|
      t.string :name
      t.string :email
      t.string :url
      t.text :content

      t.timestamps
    end
  end
end
