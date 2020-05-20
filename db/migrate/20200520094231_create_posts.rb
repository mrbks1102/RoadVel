class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :post_photo, null: false
      t.references :user, foreign_key: true, null: false
      t.timestamps
    end
  end
end