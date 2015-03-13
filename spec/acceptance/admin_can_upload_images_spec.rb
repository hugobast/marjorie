require 'spec_helper'

feature 'Admin can upload images', %q{
  In order to put a lovely image in an essay
  As an admin and content creator
  I want to upload an image
} do

  background do
    marjorie = create(:admin)
    sign_in! marjorie
  end

  scenario do
    visit new_admin_image_path
    attach_image_to_form_and_save

    expect_to_see_one_image
  end

  def attach_image_to_form_and_save
    attach_file 'Image file', 'spec/fixtures/file.png'

    click_button 'Save'
  end

  def expect_to_see_one_image
    expect(page).to have_selector('.image', count: 1)
  end
end
