FactoryGirl.define do
  factory :admin, class: User do
    username 'marjorie'
    email 'marjorie@example.com'
    password '12345678'
    password_confirmation '12345678'
    is_admin true
  end

  factory :visitor, class: User do
    username 'visitor'
    email 'visitor@example.com'
    password '12345678'
    password_confirmation '12345678'
    is_admin false
  end
end