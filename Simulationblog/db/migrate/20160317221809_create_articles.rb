class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.datetime :date
      t.integer :user_id
      t.string :title
      t.text :content

      t.timestamps null: false
    end
  end
end
