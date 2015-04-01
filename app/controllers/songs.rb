get '/songs' do
  'all songs'
end

get '/songs/new' do
  'create a song form'
end

post '/songs/new' do
  'create a song'
end

get '/songs/:id' do
  'show single song'
end

put '/songs/:id/edit' do
  'edit single song'
end

delete 'songs/:id' do
  'delete single song'
end
