get '/users/:id/edit' do
  erb :'users/edit'
end

get '/users/:id' do
  cur_user = User.find(params[:id])
  erb :'/users/show', locals: {user: cur_user}
end

