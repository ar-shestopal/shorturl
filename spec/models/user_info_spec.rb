require 'rails_helper'

describe UserInfo, type: :model do
  it { should have_db_column(:request_user_agent) }
  it { should have_db_column(:request_from) }
  it { should have_db_column(:request_referer) }
  it { should have_db_column(:request_ip) }

  it { should belong_to :short_url }
end