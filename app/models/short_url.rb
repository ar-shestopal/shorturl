class ShortUrl < ApplicationRecord
  has_many :user_infos
  has_secure_token

  validates :long, presence: true
end
