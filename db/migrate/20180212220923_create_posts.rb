class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :body
      t.string :image
      t.string :permalink
      t.integer :views, default: 0
      t.timestamps
    end
  end
end
