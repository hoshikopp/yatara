require 'sinatra'
require 'sinatra/reloader'

get '/' do
  erb :myapp
end

get '/contacts' do
  erb :contacts
end

get '/blogs' do
   erb :index 
end

get '/a' do
    erb :a
end

get '/b' do
    erb :b
end

get '/c' do
    erb :b
end

post '/contacts' do
    @name = params['name']
    @email = params['email']
    @content = params['content']
    erb :confirm
end

get '/users' do
    erb :form
end

get '/users/confirm' do
    erb :user_confirm
end

post '/users/confirm' do
    @name = params['name']
    @email = params['email']
    @password = params['password']
    
    if @name.empty? || @email.empty? || @password.empty?
        redirect '/users'
end
    erb :user_confirm

end
    
   
   

