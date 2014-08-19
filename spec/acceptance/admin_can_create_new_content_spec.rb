require 'spec_helper'

feature 'Admin can create new content', %q{
  In order to put new content on my website
  As an administrator
  I want create a new essay and save it
}, js: true do

  background do
    marjorie = create(:admin)
    sign_in! marjorie
  end

  scenario do
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
    editor.set(content)
  end

  def save!
    click_button('Save')
  end

  def editor
    find('.froala-element')
  end
end
