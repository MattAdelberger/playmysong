class Vote < ActiveRecord::Base
  belongs_to :audience_member
  belongs_to :set_item
end
