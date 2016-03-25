require 'spec_helper'

feature 'Admin can insert images in essays', %q{
  In order to embellish my essays
  As an administrator
  I want create to insert an image into an essat
  And save it
}, js: true do
  include_context 'acceptance_admin'

  let!(:image) { create(:image) }

  scenario do
    visit new_admin_essay_path

    enter_title('Lorem ipsum dolor sit amet')
    enter_content(%q{
      Apollonius of Perga extraplanetary.
      Tingling of the spine.
    })

    insert_image!
    save!

    expect(page).to have_selector "img[src='#{image.image_file_url(:large)}']"
    expect(page).to have_content('Essay was created successfully')
  end

  def enter_title(title)
    fill_in 'essay_title', with: title
  end

  def enter_content(content)
    editor.set(content)
  end

  def insert_image!
    click_on 'Insert Image'
    first('.insert-image').click
    find('.js-menu-screen').click
  end

  def save!
    click_button('Save')
  end

  def editor
    find('.pen')
  end
end
