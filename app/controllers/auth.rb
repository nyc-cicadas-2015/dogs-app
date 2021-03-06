
# We have to GET a form so that we can POST its contents
get '/form' do
  erb :form
end

# The form, based on its action and method attribute sends
# a POST to /favorite_pet.  The params object looks like
# a hash and contains keys based on the form's <input> tags
#
# @pet_name is available, for free in the favorite_pet template

post '/favorite_pet' do
  @pet_name = params[:name].upcase
  erb :favorite_pet
end

# Print the params "hash" as a string (shows up pretty in the browser)
get '/params' do
  params.to_s
end

# Simple GET route with a passed variable
get '/giraffe' do
  @adjective = "Surly"
  erb :giraffe
end

get '/derp' do
  # NO, @adjective is not set here if you go to /giraffe first
  'you are a derp'
end

get '/login' do
  erb :"users/login"
end

post '/login' do
  user_params = params[:user]
  user = User.find_by(username: user_params[:username])
  if user && user.password == user_params[:password]
    session[:user_id] = user.id
    redirect '/dogs'
  else
    redirect '/sad_face'
  end
end

delete '/logout' do
  session[:user_id] = nil
end

