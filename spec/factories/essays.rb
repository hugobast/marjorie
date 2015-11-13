FactoryGirl.define do
  factory :essay do
    transient do
      since 1.hour
    end

    title 'Essay Title'
    content '<p>Lorem ipsum<p>'

    trait :published do
      state :published

      published_at { since.ago }
    end

    trait :with_image do
      content <<text
        <p>Well, yeah you've gotta lock that down. She calls it a mayonegg. Please refrain from Mayoneggs during this salmonella scare. Heart attack never stopped old big bear.</p>\r\n\r\n<p>I could use a leather jacket for when I'm on my hog and have to go into a controlled slide. Oh, yeah, the $4,000\r\nsuit is holding the elevator for a guy who doesn't make that in 3 months. Come on! And I wouldn't just lie there, if that's what you're thinking. That's not what I WAS thinking. Suddenly playing with yourself is a scholarly pursuit? Did you enjoy your lunch, mom? You drank it fast enough.</p>\r\n\r\n<p><img src=\"https://marjorie-development.s3.amazonaws.com/uploads/image/image_file/2/image.png\"></p><p><br></p><p>She calls it a mayonegg. If this were a Lifetime Moment of Truth movie, this would be our act break. But it wasn't. You just made a fool out of yourself in front of T-Bone. She's always got to wedge herself in the middle of us so that she can control everything. Yeah. Mom's awesome.</p>\r\n\r\n<p>Chicken fingers… with spicy club sauce. Hey, if I can't find a horny immigrant by then, I don't deserve to stay. I'd rather be dead in California than alive in Arizona. No, it's the opposite. It's like my heart is getting hard. I don't want no part of yo' tight-ass country club, ya freak bitch!</p> text
text
    end
  end
end
