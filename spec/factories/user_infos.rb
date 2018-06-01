FactoryBot.define do
  factory :user_info do
    short_url
    request_user_agent 'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_4'
    request_from nil
    request_referer 'http://localhost:3000/'
    request_ip 'http://localhost:3000/'
  end
end
