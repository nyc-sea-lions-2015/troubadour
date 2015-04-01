get '/songs' do
  all_songs = Song.all
  erb :'/songs/index', locals: {songs: all_songs}
end

get '/songs/new' do
  erb :'/songs/new'
end

post '/songs/new' do
  song = Song.new(params[:song])
  song.user_id = session[:user_id]
  puts song.user.user_name
  if song.save!
    redirect '/songs'
  else
    [500, 'Song not saved!']
  end
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
