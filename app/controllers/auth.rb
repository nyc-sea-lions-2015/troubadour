get '/signin' do
  erb :'auth/signin'
end

post '/signin' do
  puts params
  redirect '/'
end

post '/signup' do
  user = User.new(params[:user])
  puts user.user_name
  puts user.password_digest
  redirect '/'
end

get '/signout' do
  'sign out user'
end