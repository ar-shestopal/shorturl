FactoryBot.define do
  factory :user_info do
    request_user_agent "MyString"
    request_from "MyString"
    request_referer "MyString"
    request_ip "MyString"
    short_url nil
  end
end
