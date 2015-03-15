class ImageUploader < CarrierWave::Uploader::Base
  include CarrierWave::MiniMagick

  version :small do
    process resize_to_limit: [660, -1]
  end

  version :large do
    process resize_to_limit: [1440, -1]
  end

  def store_dir
    "uploads/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
end
