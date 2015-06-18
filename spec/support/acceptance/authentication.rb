module AuthenticationHelpers
  def sign_in!(user)
    visit new_user_session_path

    within '.new_user' do
      fill_in 'Email', with: user.email
      fill_in 'Password', with: user.password
      click_button 'Sign in'
    end
  end
end

RSpec.configure { |c| c.include AuthenticationHelpers, type: :acceptance }
