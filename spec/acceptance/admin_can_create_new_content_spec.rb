require 'spec_helper'

feature 'Admin can create' do
  background do
    marjorie = create(:admin)
    login_as marjorie
  end

  scenario 'new content' do
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
