class Event < ActiveRecord::Base
  include Codeable

  has_many :set_items, dependent: :destroy
  has_many :votes, dependent: :destroy
  has_many :audience_members, through: :votes
  belongs_to :user
  has_many :songs, through: :set_items

  validates :venue, :date, presence: true
  validates :code, uniqueness: true
  validates :venue, uniqueness: { scope: :date, case_sensitive: false }
end
