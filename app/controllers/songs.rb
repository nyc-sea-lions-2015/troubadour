get '/songs' do
  'all songs'
end


get '/songs/:id' do
  'show single song'
end

put '/songs/:id' do
  'edit single song'
end

delete 'songs/:id' do
  'delete single song'
end
