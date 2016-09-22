# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

admin = User.find_or_create_by!(
  username: 'marjorie',
  email: 'marjorie@example.com',
  is_admin: true)

admin.update(password: '12345678',
  password_confirmation: '12345678')

section = Section.friendly.find('blog')

100.times do
  essay = Essay.create(
    title: Faker::Hipster.sentence,
    content: [
      "<p>#{Faker::Hipster.paragraph(10)}</p>",

      "<p><img src='#{Faker::Placeholdit.image('400x600', 'jpg', 'dedede', '000', Faker::Hipster.sentence)}'></p>",

      "<p>#{Faker::Hipster.paragraph(10)}</p>",
      "<p>#{Faker::Hipster.paragraph(10)}</p>",

      "<p><img src='#{Faker::Placeholdit.image('400x600', 'jpg', 'dedede', '000', Faker::Hipster.sentence)}'></p>",

      "<p>#{Faker::Hipster.paragraph(10)}</p>"
    ].join)

  section.essays << essay

  essay.publish!
end