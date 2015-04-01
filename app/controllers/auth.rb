get '/signin' do
  erb :'auth/signin'
end

post '/signin' do
  puts params
  redirect '/'
end

post '/signup' do

  redirect '/'
end

get '/signout' do
  'sign out user'
end