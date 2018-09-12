require 'sinatra'
require 'sendgrid-ruby'
include SendGrid



get '/' do  
  
  @background ='
  <style>
  background-image: url("thumb-1920-2957.jpg") !Important;
  background-position: center !Important;
  background-repeat: no-repeat !Important; 
  background-size: cover !Important;
  </style>'
erb (:home)
end

get '/home' do
  @background ='
  <style>
  background-image: url("thumb-1920-2957.jpg");
  background-position: center;
  background-repeat: no-repeat; 
  background-size: cover;
  </style>'

  erb (:home)
end
get '/cookies' do
  @background ='
  <style>
  background-image: url("background_for_other_pages.jpg");
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover; 
    </style>'
  erb (:cookies)
end
get '/cakes' do
  @background ='
  <style>
  background-image: url("background_for_other_pages.jpg");
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover; 
    </style>'
  erb (:cakes)
end
get '/muffins' do
  @background ='
  <style>
  background-image: url("background_for_other_pages.jpg");
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover; 
    </style>'
  erb (:muffins)
end
get '/about' do

  erb (:about)
end
get '/contact' do
  erb (:contact)
end