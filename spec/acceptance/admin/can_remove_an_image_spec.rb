require 'spec_helper'

feature 'Admin can remove an image', %q{
  In order to remove images I no longer need
  As an administrator
  I want create to delete that image
}, js: true do
  include_context 'acceptance_admin'

  let!(:image) { create(:image) }

  scenario do
    visit admin_images_path

    delete_image!

    expect(page).to have_content('Image was removed.')
  end

  def delete_image!
    within(image_card) { click_on 'Remove' }
  end

  def image_card
    first('.card')
  end
end
