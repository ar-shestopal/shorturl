require 'rspec'

describe User, type: :model do
  it { should have_db_column(:request_user_agent) }
  it { should have_db_column(:request_from) }
  it { should have_db_column(:request_referer) }
  it { should have_db_column(:request_ip) }
end