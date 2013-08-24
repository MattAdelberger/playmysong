class RemoveVotesFromSongs < ActiveRecord::Migration
  def change
    remove_column :songs, :votes, :integer
  end
end
