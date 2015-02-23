class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :body
      t.string :category
      t.string :author_id

      t.timestamps

      add_foreign_key :posts, :authors
    end
  end
end
