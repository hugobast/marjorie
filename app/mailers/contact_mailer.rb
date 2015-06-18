class ContactMailer < ApplicationMailer
  def email(name:, email:, text:)
    @name, @body = name, text

    mail to: ENV['DEFAULT_TO_EMAIL'], from: email
  end
end
