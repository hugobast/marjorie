FactoryGirl.define do
  factory :essay do
    transient do
      since 1.hour
    end

    title 'Essay Title'
    content '<p>Lorem ipsum<p>'

    trait :published do
      state :published

      published_at { since.ago }
    end
  end
end
