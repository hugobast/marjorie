require 'spec_helper'

feature 'Visitor cannot create new content', %q{
  In order to restrict content creation
  When a visitor tries to access the backoffice
  He should be redirected
} do

  background do
    visitor = create(:visitor)
    sign_in! visitor
  end

  scenario do
    visit new_admin_essay_path

    expect(current_path).to eq homepage
  end
end