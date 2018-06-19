class ShortUrl < ApplicationRecord
  has_many :user_infos
  has_secure_token

  validates :long, presence: true

  before_save :check_url

  private

  def check_url
    self.long = "http://#{long}" unless /^(http|https)/ =~ long
  end
end
