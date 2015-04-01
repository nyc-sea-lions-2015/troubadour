get '/users/:id/edit' do
  'Edit your artist!'
end

get '/users/:id' do
  cur_user = User.find(params[:id])
  erb :'/users/show', locals: {user: cur_user}
end

