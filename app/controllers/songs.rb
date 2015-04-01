get '/songs' do
  all_songs = Song.all
  erb :'/songs/index', locals: {songs: all_songs}
end

get '/songs/new' do
  erb :'/songs/new'
end

post '/songs/new' do
  puts 'create a song'
end

get '/songs/:id' do
  erb :'/songs/show'
end

put '/songs/:id/edit' do
  'edit single song'
end

delete 'songs/:id' do
  'delete single song'
end
