module Support
  module ShortUrlFeature
    def create_short_url
      long_url = 'https://example.com?some_very_long_param'

      visit "/"

      fill_in "Long url", :with => long_url
      click_button "Shorten url"

      ShortUrl.last
    end
  end
end