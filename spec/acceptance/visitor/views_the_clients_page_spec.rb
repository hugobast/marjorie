require 'spec_helper'

feature 'Visitor views the clients page', %q{
  When I'm looking for a writer, I want to know who they worked with,
  so that I can tell that they are awesome at what they do.
} do
  given!(:client) { create(:client) }

  scenario do
    visit root_url(host: 'www.marjorieb.dev')
    click_on 'Clients', match: :first

    expect(page).to have_content 'An Awesome Client'
    expect(page).to have_content "Well, yeah you've gotta lock that down"
    expect(page).to have_content 'Said Someone @ Client'
  end
end
