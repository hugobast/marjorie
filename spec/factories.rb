FactoryGirl.define do
  factory :admin, class: User do
    username 'marjorie'
    email 'marjorie@example.com'
    password '12345678'
    password_confirmation '12345678'
    is_admin true
  end
end