put '/users/:id' do
  user_to_update = User.find(params[:id])
  if user_to_update
    user_to_update.user_name = params[:user][:user_name]
    if user_to_update.save
      redirect "/users/#{user_to_update.id}"
    else
      [500, 'Something went wrong!']
    end
  else
    [400, 'Could not edit user!']
  end
end

get '/users/:id/edit' do
  cur_user = User.find(session[:user_id])
  erb :'users/edit', locals: {user: cur_user}
end


get '/users/:id' do
  cur_user = User.find(params[:id])
  erb :'/users/show', locals: {user: cur_user}
end

delete '/users/:id' do
  user_to_delete = User.find(params[:id])
  puts user_to_delete.user_name
end

