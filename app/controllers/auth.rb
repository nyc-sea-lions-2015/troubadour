get '/signin' do
  erb :'auth/signin'
end

post '/signin' do
  puts params
  redirect '/'
end

post '/signup' do
  puts 'create new user'
  redirect '/signin'
end

get '/signout' do
  'sign out user'
end