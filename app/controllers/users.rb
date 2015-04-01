put '/users/:id' do
  puts params
end

get '/users/:id/edit' do
  cur_user = User.find(session[:user_id])
  erb :'users/edit', locals: {user: cur_user}
end


get '/users/:id' do
  cur_user = User.find(params[:id])
  erb :'/users/show', locals: {user: cur_user}
end

