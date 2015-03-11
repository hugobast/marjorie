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

  scenario
end
