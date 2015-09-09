get '/new_visitor' do
  erb :new_visitor
end

post '/new_visitor' do
  session[:visitor_name] = params[:visitor_name]
  redirect "/dogs"
end

get '/forget_me' do
  session[:visitor_name] = nil
  redirect "/dogs"
end
