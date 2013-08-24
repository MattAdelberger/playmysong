class AddPlayCountToSetItem < ActiveRecord::Migration
  def change
    add_column :set_items, :play_count, :integer
  end
end
