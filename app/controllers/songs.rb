get '/songs' do
  all_songs = Song.all
  erb :'/songs/index', locals: {songs: all_songs}
end

get '/songs/new' do
  erb :'/songs/new'
end

post '/songs/new' do
  puts params
  redirect '/'
end

get '/songs/:id' do
  cur_song = Song.find(params[:id])
  erb :'/songs/show', locals: {song: cur_song}
end

put '/songs/:id/edit' do
  'edit single song'
end

delete 'songs/:id' do
  'delete single song'
end
