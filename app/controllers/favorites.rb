post '/favorites/:id' do
  song = Song.find(params[:id])
  user = User.find(session[:user_id])
  favorite = Favorite.new(
    user_id: user.id,
    song_id: song.id
    )

  if favorite.save
    @favorites_count = User.find(params[:id]).favorites.count
    erb :'songs/show', layout: false
  else
    [500, 'Something went wrong!']
  end
end