ActionMailer::Base.smtp_settings = {
  user_name:            ENV['MANDRILL_SMTP_USERNAME'],
  password:             ENV['MANDRILL_SMTP_PASSWORD'],
  domain:               'marjorieb.ca',
  address:              'smtp.mandrillapp.com',
  port:                 587,
  authentication:       :plain,
  enable_starttls_auto: true
} if Rails.env.production?
