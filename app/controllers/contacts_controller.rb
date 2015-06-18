class ContactsController < ApplicationController
  def show
    contact_form
  end

  def create
    render(:show) and return unless \
     contact_form.validate contact_params

    contact_form.save do |nested|
      send_contact_mail(nested)

      redirect_to(action: :show) and return
    end
  end

  private

  def contact_params
    params.require(:contact).permit %i(name email text)
  end

  def contact_form
    @contact ||= ContactForm.new(Contact.new)
  end

  def send_contact_mail(args)
    ContactMailer.email(
      name: args[:name],
      email: args[:email],
      text: args[:text],
    ).deliver
  end
end
