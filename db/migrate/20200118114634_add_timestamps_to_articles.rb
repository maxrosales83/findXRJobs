class AddTimestampsToArticles < ActiveRecord::Migration[5.1]
  def change
    add_column :articles, :created_at, :datetime
  end
end
