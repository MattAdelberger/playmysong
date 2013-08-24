module Codeable
  extend ActiveSupport::Concern

  included do
    before_create :generate_code
  end

  protected

  def generate_code
    self.code = loop do
      random_code = SecureRandom.urlsafe_base64(4, false)
      break random_code unless self.class.where(code: random_code).exists?
    end
  end
end
