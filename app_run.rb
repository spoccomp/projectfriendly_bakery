require 'sinatra'
require 'sendgrid-ruby'
include SendGrid



get '/' do  
  
  
erb (:home)
end
get '/home' do
  erb (:home)
end
get '/cookies' do
  "Hello World"
end
get '/cakes' do
  "Hello World"
end
get '/muffins' do
  "Hello World"
end
get '/cakes' do
  "Hello World"
end