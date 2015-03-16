FactoryGirl.define do
  factory :image do
    sequence(:created_at) do |n|
      n.hour.ago
    end

    image_file do
      Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec', 'fixtures', 'file.png'))
    end
  end
end
