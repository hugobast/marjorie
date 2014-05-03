require 'acceptance/acceptance_helper'

feature 'Admin can create new content', %q{
  In order to share with the world
  As a thinker, writer, etc
  I want to put new content out
} do

  background do
    marjorie = create(:admin)
    login_as marjorie
  end

  scenario 'first scenario' do
    visit new_admin_essay_path

    within('#new_essay') do
      enter_title('Lorem ipsum dolor sit amet')
      enter_content(%q{
        Apollonius of Perga extraplanetary.
        Tingling of the spine.
      })

      save!
    end

    expect(page).to have_content('Essay was saved successfully')
  end

  def enter_title(title)
    fill_in 'Title', with: title
  end

  def enter_content(content)
    fill_in 'Content', with: content
  end

  def save!
    click_button('Save')
  end
end
