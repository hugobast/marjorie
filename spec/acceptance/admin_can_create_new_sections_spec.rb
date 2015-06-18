require 'spec_helper'

feature 'Admin can create new sections', %q{
  In order to organize content
  As an administrator
  I want create sections
}, js: true do

  background do
    marjorie = create(:admin)
    sign_in! marjorie
  end

  scenario do
    visit new_admin_section_path

    fill_in 'section[name]', with: 'Section'
    fill_in 'section[position]', with: '1'
    check 'section[is_main]'

    save!

    expect(page).to have_content('Section was created successfully')
  end

  def save!
    click_button('Save')
  end
end
