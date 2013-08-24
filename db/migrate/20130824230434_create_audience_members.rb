class CreateAudienceMembers < ActiveRecord::Migration
  def change
    create_table :audience_members do |t|
      t.string :email

      t.timestamps
    end
  end
end
