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
    visit new_admin_essay_path

    attach_image_to_form_and_save

    expect(page).to have_content('Essay was saved successfully')
  end

  def attach_image_to_form_and_save
    within('#new_essay') do
      attach_file 'essay_image', 'spec/fixtures/file.png'
    end

    save!
  end

  def save!
    click_button('Save')
  end
end
