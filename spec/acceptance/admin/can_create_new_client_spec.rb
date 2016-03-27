require 'spec_helper'

feature 'Admin can create new client', %q{
  When I want to grow my references, I want create a new client,
  so I visitors of the website see my qualifications
}, js: true do
  include_context 'acceptance_admin'

  scenario do
    visit admin_clients_path

    click_on 'Create Client'

    within '#new_client' do
      fill_in 'Name', with: 'Chad'
      fill_in 'Statement', with: 'Lore ipsum'
      fill_in 'Reference', with: 'Someone Somebody'
      fill_in 'Website', with: 'http://www.example.com'

      attach_file 'Image file', 'spec/fixtures/file.png'

      click_on 'Save'
    end

    expect_to_see_one_client
  end

  def expect_to_see_one_client
    expect(page).to have_selector('tbody tr', count: 1)
  end
end
