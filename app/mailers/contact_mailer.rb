class ContactMailer < ApplicationMailer
  def email(name:, email:, text:)
    @name, @body = name, text

    mail to: 'info@marjorieb.ca', from: email
  end
end
