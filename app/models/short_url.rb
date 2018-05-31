class ShortUrl < ApplicationRecord
  has_secure_token

  validates :long, presence: true
end
