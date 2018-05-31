require "rails_helper"

RSpec.feature "Short url management", :type => :feature do
  scenario "User creates a new short url" do
    short_url = create_short_url

    expect(page).to have_link(nil,
                              href: follow_short_url_path(token: short_url.token))
  end

  scenario 'User can follow a link after it has being shortened' do
    short_url = create_short_url

    click_link(href: follow_short_url_path(token: short_url.token))

    expect(page).to have_current_path(short_url.long)
  end
end