require "rails_helper"

RSpec.feature "Short url management", :type => :feature do
  scenario "User creates a new short url" do
    long_url = 'https://example.com?some_very_long_param'

    visit "/"

    fill_in "Long url", :with => long_url
    click_button "Shorten url"

    expect(page).to have_text("Click here to follow")
  end
end