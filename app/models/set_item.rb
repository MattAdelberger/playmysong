class SetItem < ActiveRecord::Base
  belongs_to :song
  belongs_to :event
end
