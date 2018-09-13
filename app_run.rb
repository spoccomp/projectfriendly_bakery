require 'sinatra'
require 'sendgrid-ruby'
require 'make_it_so'
include SendGrid



get '/' do  
  
 
erb (:home)
end

get '/home' do


  erb (:home)
end
get '/cookies' do

  erb (:cookies)
end
get '/cakes' do
 
  erb (:cakes)
end
get '/muffins' do

  erb (:muffins)
end
get '/about' do

  erb (:about)
end
get '/contact' do
  erb (:contact)
end
post "/contact" do
  from = Email.new(email: 'richardtrapanese@gmail.com')
  to = Email.new(email: params[:email_address])
  subject = 'Thank you for voting'
  content = Content.new(
    type: 'text/plain', 
    value: params[:comment]
  )
  
  # create mail object with from, subject, to and content
  mail = Mail.new(from, subject, to, content)
  
  # sets up the api key
  sg = SendGrid::API.new(
    api_key: ENV["sendgrid_key"]
  )
  
  # sends the email
  response = sg.client.mail._('send').post(request_body: mail.to_json)
  
  # display http response code
  puts response.status_code
  
  # display http response body
  puts response.body
  
  # display http response headers
  puts response.headers