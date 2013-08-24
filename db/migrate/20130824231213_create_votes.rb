class CreateVotes < ActiveRecord::Migration
  def change
    create_table :votes do |t|
      t.references :audience_member, index: true
      t.references :set_item, index: true

      t.timestamps
    end
  end
end
