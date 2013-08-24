class CreateSetItems < ActiveRecord::Migration
  def change
    create_table :set_items do |t|
      t.references :song, index: true
      t.references :event, index: true
      t.integer :votes
      t.boolean :active

      t.timestamps
    end
  end
end
