class AddBlogimageToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :blogimage, :string
  end
end
