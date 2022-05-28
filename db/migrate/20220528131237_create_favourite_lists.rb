class CreateFavouriteLists < ActiveRecord::Migration[6.1]
  def change
    create_table :favourite_lists do |t|
      t.references :user, null: false, foreign_key: true
      t.references :list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
