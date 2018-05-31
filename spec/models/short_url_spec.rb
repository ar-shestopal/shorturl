require 'rails_helper'

RSpec.describe ShortUrl, type: :model do
  it { should validate_presence_of(:long) }

  context '#set token' do
    it 'should generate token on creation' do
      short_url = create(:short_url)
      expect(short_url.token).not_to be_nil
    end
  end
end
