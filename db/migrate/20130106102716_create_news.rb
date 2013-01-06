class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.string	  :name
      t.text	  :content
      t.datetime  :start
      t.string	  :url
      t.string	  :autourl

      t.timestamps
    end
  end
end
