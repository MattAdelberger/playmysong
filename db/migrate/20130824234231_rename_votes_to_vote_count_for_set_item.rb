class RenameVotesToVoteCountForSetItem < ActiveRecord::Migration
  def change
    rename_column :set_items, :votes, :vote_count
  end
end
