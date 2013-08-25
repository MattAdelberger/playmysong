class AudienceMember < ActiveRecord::Base
  has_many :votes, dependent: :destroy
  belongs_to :event
end
