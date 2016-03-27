require 'spec_helper'

feature 'Admin can upload images', %q{
  In order to put a lovely image in an essay
  As an admin and content creator
  I want to upload an image
} do
  include_context 'acceptance_admin'

  scenario do
    visit admin_images_path
    click_on 'Upload Image'

    attach_image_to_form
    fill_in 'image[title]', with: 'Lorem Ipsum'

    click_button 'Save'

    expect_to_see_one_image
  end

  def attach_image_to_form
    attach_file 'Image file', 'spec/fixtures/file.png'
  end

  def expect_to_see_one_image
    expect(page).to have_selector('.image', count: 1)
  end
end
