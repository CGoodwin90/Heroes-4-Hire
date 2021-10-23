puts 'Cleaning database...'
Superhero.destroy_all
User.destroy_all

puts 'Assembling users...'

users_attributes = [
  {
    name:         'Bruce',
    email:        '3000@love.com',
    password:     123456,
    remote_photo_url: "https://res.cloudinary.com/dthdgcolp/image/upload/v1567146236/wkzmvrynwaujjkozk5y6.jpg"
  },
  {
    name:         'Stan',
    email:        'click@power.com',
    password:     123456,
    remote_photo_url: "https://res.cloudinary.com/dthdgcolp/image/upload/v1567146237/dtcywbqepae8j2yqfz5z.jpg"
  }
]

User.create!(users_attributes)
puts "Finished creating #{users_attributes.length} users!"

puts 'Assembling superheroes...'


superheroes_attributes = [
  {
    name:         'Batman',
    price:        1000,
    description:  'In the name of his murdered parents, Bruce Wayne wages eternal war on the criminals of Gotham City. He is vengeance. He is the night. He is Batman.',
    location:     'New York',
    user_id:      User.first.id,
    remote_photo_url:        "https://res.cloudinary.com/dthdgcolp/image/upload/v1567141774/cr4lvrm0sen8il0jrtew.jpg"
  },
  {
    name:         'Superman',
    price:        9000,
    description:  'Faster than a speeding bullet, more powerful than a locomotive… The Man of Steel fights a never-ending battle for truth, justice, and the American way.',
    location:     'Manhattan',
    user_id:      User.first.id,
    remote_photo_url:        "https://res.cloudinary.com/dthdgcolp/image/upload/v1567141777/tkinje6aevn6nwsvcxd8.jpg"
  },
  {
    name:         'Ironman',
    price:        3000,
    description:  "Genius. Billionaire. Playboy. Philanthropist. Tony Stark's confidence is only matched by his high-flying abilities as the hero called Iron Man.",
    location:     'California',
    user_id:      User.last.id,
    remote_photo_url:        "https://res.cloudinary.com/dthdgcolp/image/upload/v1567141780/uglhptinyi22qeevjwhy.jpg"
  },
  {
    name:         'Captain America',
    price:        1000,
    description:  'Recipient of the Super-Soldier serum, World War II hero Steve Rogers fights for American ideals as one of the world’s mightiest heroes and the leader of the Avengers.',
    location:     'Canada',
    user_id:      User.first.id,
    remote_photo_url:        "https://res.cloudinary.com/dthdgcolp/image/upload/v1567141784/yowuu9vt6sedf0onur8i.jpg"
  },
  {
    name:         'Hulk',
    price:        10,
    description:  'Exposed to heavy doses of gamma radiation, scientist Bruce Banner transforms into the mean, green rage machine called the Hulk.',
    location:     'Boston',
    user_id:      User.last.id,
    remote_photo_url:        "https://res.cloudinary.com/dthdgcolp/image/upload/v1567141787/vb7grsixutfyz0jzxjaw.jpg"
  },
  {
    name:         'Wonder Woman',
    price:        2000,
    description:  "Beautiful as Aphrodite, wise as Athena, swifter than Hermes, and stronger than Hercules, Princess Diana of Themyscira fights for peace in Man's World.",
    location:     "Madagascar",
    user_id:      User.first.id,
    remote_photo_url:        "https://res.cloudinary.com/dthdgcolp/image/upload/v1567141790/bf0nqrwo8poohdv8jv5s.jpg"
  },
  {
    name:         'Saitama',
    price:        9000,
    description:  'Described as a "hero-for fun" - Saitama trained himself so hard that he unintentionally broke the natural limiter that prevents living beings from going beyond superhuman condition, Saitama faces an existential crisis as he is now too powerful to gain any thrill from his heroics.',
    location:     "Tokyo",
    user_id:      User.first.id,
    remote_photo_url:        "https://res.cloudinary.com/dthdgcolp/image/upload/v1567140910/t2boxqsuf9yvhigjj6wg.jpg"
  }
]

Superhero.create!(superheroes_attributes)
puts "Finished creating #{superheroes_attributes.length} superheroes!"
