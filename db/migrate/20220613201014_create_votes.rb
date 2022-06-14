class CreateVotes < ActiveRecord::Migration[6.1]
  def change
    create_table :votes do |t|
      t.references :list, null: false, foreign_key: true

      t.timestamps
    end
  end
end
