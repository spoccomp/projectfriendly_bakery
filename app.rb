require 'sinatra'
require 'sendgrid-ruby'
require_relative 'make_it_so'

include SendGrid

rich = Cookie.new("chocalate chip", 4)
puts "Amount of cookies "  
puts rich.amountOfCookies()
puts rich.kindOf()
puts "total cost:"
rich.total()
rich.addtoBag()
rich.bagItems()

puts rich.typeOfCookies()

# rich.printCatalog()

rich.displayCatalog()


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
post "/about" do
  from = Email.new(email: 'richardtrapanese@gmail.com')
  to = Email.new(email: params[:email_address])
  subject = 'Thank you - The Corner Bakery Cafe'
  content = Content.new(
    type: 'text/plain', 
    value:  
     "Cookies
      chocalate chip cookie $2.00 each
        Delicous crunchy but soft and gooy, heaven in your mouth.
     
      green cookie $2.00 each
        We call it the Joker because after you eat one you laugh for another.
     
      fancy cookie $2.00 each
        They taste as good as they look!
     
      Cakes
      birthday cake $20.00 each
        For all occasions, all flavors and sizes.
     
      wedding cake call for pricing
       The best of the best we tower over the rest. Please come to the bakery to discuss all of the different combinations
      
      flavored cake $20.00 each
        We make all kinds of flavors of cake and icings for your imagination.
     
      Muffins 
      chocalate chip muffin $5.00 each
        Savory hot mess with butter, you deserve it!
      blueberry muffin $5.00 each
        The berries pop in your mouth with juicy sweet flavor.
      corn protien muffin $5.00 each
        The healthy choice, taste corn and feel your muscles grow."
     
    # rich.displayCatalog()
    # params[:comment] 
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

  erb (:about)

  end