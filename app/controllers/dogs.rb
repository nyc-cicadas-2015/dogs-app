get '/dogs' do
  @dogs = Dog.all
  if params[:mode] == 'hacker'
    @hacker_mode = true
  end
  erb :'dogs/index'
end

get '/dogs/new' do
  @dog = Dog.new
  erb :'dogs/new', layout: !request.xhr?
end

get '/dogs/:id' do
  @dog = Dog.find(params[:id])
  if request.xhr?
    erb :'dogs/_dog', locals: {canine: @dog}, layout: false
  else
    erb :'dogs/show'
  end
end

post '/dogs' do
  dog = Dog.create(params[:dog])
  if request.xhr?
    erb :'dogs/_dog', locals: {canine: dog}, layout: false
  else
    redirect "/dogs/#{dog.id}"
  end
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

delete '/dogs/:id' do
  Dog.find(params[:id]).destroy
  redirect '/dogs'
end
