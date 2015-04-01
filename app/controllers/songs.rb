get '/songs' do
  erb :'/songs/index'
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
