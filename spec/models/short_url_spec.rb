require 'rails_helper'

RSpec.describe ShortUrl, type: :model do
  it { should validate_presence_of(:long) }
  it { should have_many :user_infos }

  context '#set token' do
    it 'should generate token on creation' do
      short_url = create(:short_url)
      expect(short_url.token).not_to be_nil
    end
  end

  context '#check url' do
    it 'should add https' do
      short_url = create(:short_url, long: 'google.com')
      expect(short_url.long).to eq 'http://google.com'
    end
  end
end
