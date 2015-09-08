
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
  
end

get '/signup' do
  
end
