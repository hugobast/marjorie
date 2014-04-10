require 'acceptance/acceptance_helper'

feature 'Admin can create new content', %q{
  In order to share with the world
  As a thinker, writer, etc
  I want to put new content out
} do

  background do
    @marjorie = create(:admin)
  end

  scenario 'first scenario' do
    login_as @marjorie
    visit new_admin_essay_path

    within('#new_essay') do
      fill_in 'Title', with: 'Lorem ipsum dolor sit amet'
      fill_in 'Content', with: %q{
        Apollonius of Perga extraplanetary.
        Tingling of the spine. Orion's sword,
        rich in heavy atoms cosmic ocean
        astonishment encyclopaedia galactica
        tesseract
      }

      click_button('Save')
    end

    expect(page).to have_content('Essay was saved successfully')
  end
end
