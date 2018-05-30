FactoryBot.define do
  factory :short_url do
    long { 'https//example.com?blah%blah%blah' }
  end
end
