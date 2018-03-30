class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :brand_name
      t.string :product_name
      t.string :email
      t.string :photo_url
      t.string :username
      t.string :product_desc

      t.timestamps
    end
  end
end
