class SetItem < ActiveRecord::Base
  belongs_to :song
  belongs_to :event
  has_many :votes, dependent: :destroy
end
