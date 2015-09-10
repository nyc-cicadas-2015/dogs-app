get '/users/new' do
  erb :'users/new'
end

post '/users' do
  user = User.new(params[:user])
  if user.save
    redirect "/dogs"
  else
    redirect "/users/new"
  end
end
