# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

User.create!(
  username: 'marjorie',
  email: 'marjorie@example.com',
  password: '12345678',
  password_confirmation: '12345678',
  is_admin: true
)

Essay.find_or_create_by(
  title: "Chickens don't clap!",
  content:
%(<p>Well, yeah you've gotta lock that down. She calls it a mayonegg. Please refrain from Mayoneggs during this salmonella scare. Heart attack never stopped old big bear.</p>

<p>I could use a leather jacket for when I'm on my hog and have to go into a controlled slide. Oh, yeah, the $4,000
suit is holding the elevator for a guy who doesn't make that in 3 months. Come on! And I wouldn't just lie there, if that's what you're thinking. That's not what I WAS thinking. Suddenly playing with yourself is a scholarly pursuit? Did you enjoy your lunch, mom? You drank it fast enough.</p>

<p>She calls it a mayonegg. If this were a Lifetime Moment of Truth movie, this would be our act break. But it wasn't. You just made a fool out of yourself in front of T-Bone. She's always got to wedge herself in the middle of us so that she can control everything. Yeah. Mom's awesome.</p>

<p>Chicken fingers… with spicy club sauce. Hey, if I can't find a horny immigrant by then, I don't deserve to stay. I'd rather be dead in California than alive in Arizona. No, it's the opposite. It's like my heart is getting hard. I don't want no part of yo' tight-ass country club, ya freak bitch!</p>)
)

Essay.find_or_create_by(
  title: 'Let the great experiment begin!',
  content:
%(<p>Family Love Michael. Maybe it was the eleven months he spent in the womb. The doctor said there were claw marks on the walls of her uterus. Well, yeah you've gotta lock that down. You're losing blood, aren't you? Probably, my socks are wet. If I wanted something your thumb touched I'd eat the inside of your ear. [climbing under trampoline] This shall keep me safe from the hot Mexican sun. You stay on top of her, Buddy. Don't be afraid to ride her. Hard.</p>

<p>Oh, I don't have any drugs for sale, unless… did you want me to follow you to your car? How am I supposed to find someone willing to go into that musty old claptrap? I've used one adjective to describe myself. What is it? Suddenly playing with yourself is a scholarly pursuit? That's how Tony Wonder lost a nut.</p>

<p>Why are you squeezing me with your body? I'll be in the hospital bar. You know there isn't a hospital bar, Mother.
Well, this is why people hate hospitals. The only thing more terrifying than the escaped lunatic's hook was his twisted call… Hey campers! If you're suggesting I play     him Baby Buster since high school. Hey, it was one night of wild passion! Michael: And yet you didn't</p>)
)

Essay.find_or_create_by(
  title: "No, it's the opposite.",
  content:
%(<p>It's like my heart is getting hard. Wow. We're just blowing through nap time, aren't we. Look what the homosexuals have done to me! You can't just comb that out and reset it?</p>

<p>It's so watery. And yet there's a smack of ham to it. I'm a complete failure. I can't even fake the death of a
stripper.</p>

<p>Oh…yeah…the guy in the $4,000 suit is holding the elevator for a guy who doesn't make that in three months. Come on! Oh…yeah…the guy in the $4,000 suit is holding the elevator for a guy who doesn't make that in three months. Come on! A flower in my garden, a mystery in my panties. Don't worry, these young beauties have been nowhere near the bananas. My brother wasn't optimistic it could be done, but I didn't take "wasn't optimistic it could be done" for an answer. I was set up. By the Brits. A group of British builders operating outside the O.C. That was Tom Cruise, the actor. They said he was some kind of scientist. Coo coo ca chaw. Coo coo ca chaw. Coo coo ca chaw.</p>)
)