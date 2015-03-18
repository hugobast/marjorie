require 'spec_helper'

feature 'Admin can publish an essay', %q{
  In order to have readers
  As an administrator
  I want create to publish an essay
}, js: true do

  let!(:essay) { create(:essay) }

  background do
    marjorie = create(:admin)
    sign_in! marjorie
  end

  scenario do
    visit admin_essay_path(essay)

    publish_essay!

    expect(page).to have_content('published')
  end

  def publish_essay!
    click_on 'Publish'
  end
end
