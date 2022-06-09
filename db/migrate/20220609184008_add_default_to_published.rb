class AddDefaultToPublished < ActiveRecord::Migration[6.1]
  def change
    change_column :lists, :published, :boolean, default: false
  end
end
