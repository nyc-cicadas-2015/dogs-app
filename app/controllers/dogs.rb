get '/dogs' do
  @dogs = Dog.all
  erb :'dogs/index'
end

get '/dogs/new' do
  @dog = Dog.new
  erb :'dogs/new'
end

get '/dogs/:id' do
  @dog = Dog.find(params[:id])
  erb :'dogs/show'
end

post '/dogs' do
  dog = Dog.create(params[:dog])
  redirect "/dogs/#{dog.id}"
end

get '/dogs/:id/edit' do
  @dog = Dog.find(params[:id])
  erb :'/dogs/edit'
end

patch '/dogs/:id' do
  dog = Dog.find(params[:id])
  dog.update(params[:dog])
  redirect "/dogs/#{dog.id}"
end
