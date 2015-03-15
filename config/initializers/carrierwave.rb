if Rails.env.test? or Rails.env.cucumber?
  CarrierWave.configure do |config|
    config.storage = :file
    config.enable_processing = false
  end

else
  CarrierWave.configure do |config|
    config.storage = :fog

    config.fog_credentials = {
      provider: 'AWS',
      aws_access_key_id: ENV.fetch('AWS_ACCESS_KEY_ID'),
      aws_secret_access_key: ENV.fetch('AWS_SECRET_ACCESS_KEY'),
    }

    config.fog_public = true
    config.fog_directory = ENV.fetch('S3_BUCKET_NAME')
    config.fog_attributes = { 'Cache-Control' => "max-age=#{365.day.to_i}" }
  end
end