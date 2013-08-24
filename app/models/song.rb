class Song < ActiveRecord::Base
  belongs_to :user
  has_many :set_items, dependent: :destroy

  validates :title, :artist, :user_id, presence: true
  validates :title, uniqueness: { scope: :artist }
end
