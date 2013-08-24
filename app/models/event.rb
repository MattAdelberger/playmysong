class Event < ActiveRecord::Base
  include Codeable

  validates :venue, :date, presence: true
  validates :code, uniqueness: true
end
