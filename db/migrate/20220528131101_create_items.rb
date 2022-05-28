class CreateItems < ActiveRecord::Migration[6.1]
  def change
    create_table :items do |t|
      t.string :name
      t.text :description
      t.string :link
      t.references :list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
