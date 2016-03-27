RSpec.shared_context 'acceptance_admin' do
  background do
    marjorie = create(:admin)
    sign_in! marjorie
  end
end

