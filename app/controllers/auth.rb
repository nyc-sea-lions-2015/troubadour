get '/signin' do
  erb :'auth/signin'
end

post '/signin' do
  'authorize user'
end

post '/signup' do
  'create new user'
end

get '/signout' do
  'sign out user'
end