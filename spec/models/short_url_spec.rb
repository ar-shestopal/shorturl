require 'rails_helper'

RSpec.describe ShortUrl, type: :model do
  it { should validate_presence_of(:long) }
  it { should validate_presence_of(:token) }
  it { should validate_uniqueness_of(:token) }
end
