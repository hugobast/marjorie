FactoryGirl.define do
  factory :section do
    name 'Section'
    is_main false

    trait :main do
      is_main true
    end
  end
end
