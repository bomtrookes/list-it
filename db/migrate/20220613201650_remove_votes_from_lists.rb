class RemoveVotesFromLists < ActiveRecord::Migration[6.1]
  def change
    remove_column :lists, :votes, :integer
  end
end
