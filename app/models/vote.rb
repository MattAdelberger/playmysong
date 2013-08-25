class Vote < ActiveRecord::Base
  belongs_to :audience_member
  belongs_to :set_item

  validate :user_can_only_vote_5_times

  after_create :add_to_vote_count

  after_destroy :deduct_from_vote_count

  def user_can_only_vote_5_times
    if self.audience_member.votes.count >= 5
      errors.add(:base, "You can't vote anymore.")
    end
  end

  def add_to_vote_count
    self.set_item.vote_count += 1
    self.set_item.save
  end

  def deduct_from_vote_count
    self.set_item.vote_count -= 1
    self.set_item.save
  end
end
