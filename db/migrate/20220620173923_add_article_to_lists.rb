class AddArticleToLists < ActiveRecord::Migration[6.1]
  def change
    add_column :lists, :article, :boolean, default: false
  end
end
