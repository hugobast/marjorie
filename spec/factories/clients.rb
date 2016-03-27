FactoryGirl.define do
  factory :client do
    name 'An Awesome Client'
    statement "Well, yeah you've gotta lock that down. She calls it a mayonegg. Please refrain from Mayoneggs during this salmonella scare."
    reference 'Said Someone @ Client'

    image_file do
      Rack::Test::UploadedFile.new(File.join(Rails.root, 'spec', 'fixtures', 'file.png'))
    end
  end
end
