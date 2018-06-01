require "rails_helper"

RSpec.describe 'API::V1::ShortUrls', :type => :request do
  before { create(:short_url) }
  it 'returns ShortUrls json' do
    headers = {
        "ACCEPT" => "application/json"
    }
    get 'api/v1/short_urs', headers

    expect(response.content_type).to eq("application/json")
    expect(response).to
  end

end