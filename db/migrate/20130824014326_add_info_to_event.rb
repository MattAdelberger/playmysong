class AddInfoToEvent < ActiveRecord::Migration
  def change
    add_column :events, :venue, :string
    add_column :events, :date, :date
  end
end
