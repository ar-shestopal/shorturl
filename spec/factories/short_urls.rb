FactoryBot.define do
  factory :short_url do
    long { 'https//example.com?blah%blah%blah' }
  end
  trait :with_user_infos do
    after :create do |short_url|
      create_list :user_info, 3, short_url: short_url
    end
  end
end
