require 'spec_helper'

feature 'Visitor views the classification menu', %q{
  As a visitor I see no categories section in the
  menu indicating that no content is classified yet
  - so that I can start consuming content some other
  - so that I see a lean classification menu
  - so that I'm not confused by the menu
} do

  given!(:visitor) { create(:visitor) }

  scenario do
    visit root_url(host: 'www.marjorieb.dev')

    within('.classification') do
      expect(page).to_not have_content 'Catégories'
    end
  end
end
