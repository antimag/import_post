class Post < ApplicationRecord
  require 'csv'

  validates :brand_name, :product_name, :email, :photo_url, :username, :product_desc, presence: true

  def self.import(file)
    CSV.foreach(file.path, headers: true) do|row|
      post = Post.new row.to_hash.except("id")
      post.save(validate: false)
    end
  end
end
