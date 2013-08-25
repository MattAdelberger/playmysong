class AddEventIdToVote < ActiveRecord::Migration
  def change
    add_reference :votes, :event, index: true
  end
end
