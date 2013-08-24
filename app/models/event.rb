class Event < ActiveRecord::Base
  include Codeable

  has_many :set_items, dependent: :destroy

  validates :venue, :date, presence: true
  validates :code, uniqueness: true
end
