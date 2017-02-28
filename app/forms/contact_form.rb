class ContactForm < Reform::Form
  properties :name, :email, :text

  # validates :name, presence: true
  # validates :email, presence: true
  # validates :text, presence: true
end
