ActionMailer::Base.smtp_settings = {
  user_name:            ENV['SENDGRID_SMTP_USERNAME'],
  password:             ENV['SENDGRID_SMTP_PASSWORD'],
  domain:               'marjorieb.ca',
  address:              'smtp.sendgrid.net',
  port:                 587,
  authentication:       :plain,
  enable_starttls_auto: true
} if Rails.env.production?
