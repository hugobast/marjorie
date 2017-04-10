# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

if (admin = User.find_by(username: 'marjorie'))
  admin.update(password: '12345678', password_confirmation: '12345678')
else
  User.create!(username: 'marjorie',
               email: 'marjorie@example.com',
               is_admin: true,
               password: '12345678')
end

section = Section.find_or_create_by(name: 'Blog',
                                    position: 1,
                                    slug: 'blog',
                                    is_main: true)

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

  essay.update(published_at: Faker::Date.between(3.years.ago, Date.today))
end
