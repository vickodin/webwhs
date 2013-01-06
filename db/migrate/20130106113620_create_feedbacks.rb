class CreateFeedbacks < ActiveRecord::Migration
  def change
    create_table :feedbacks do |t|
      t.string	:name, :null => false
      t.string	:email
      t.string	:phone
      t.string	:url
      t.string	:subject
      t.text	:content

      t.timestamps
    end
  end
end
