require 'faker'

8.times do
  User.create!(
    user_name: Faker::Internet.user_name,
    password: Faker::Internet.password(4)
    )
end

20.times do
  Song.create!(
    title: Faker::Lorem.words(3).join(' '),
    content: Faker::Lorem.paragraph,
    user_id: User.all.sample.id
    )
end

20.times do
  Favorite.create!(
    user_id: User.all.sample.id,
    song_id: Song.all.sample.id
    )
end

