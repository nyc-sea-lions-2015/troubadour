get '/signin' do
  erb :'auth/signin'
end

post '/signin' do

  redirect '/'
end

post '/signup' do
  'create new user'
end

get '/signout' do
  'sign out user'
end