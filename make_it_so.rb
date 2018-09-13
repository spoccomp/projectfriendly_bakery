

class Bag
  attr_accessor :kind, :amount, :price

  
  def initialize(kind, type, amount)
    @kind = kind
    @amount = amount
    @type = type
    @price_cookie = 2
    @price_cake = 20
    @price_muffin = 5
    @catalog = [
      :cookies => {
      "chocalate chip cookie" => ["$2.00 each","chocalate_chip_cookies.png",
        "Delicous crunchy but soft and gooy, heaven in your mouth."
      ],
      "green cookie" => ["$2.00 each","green_cookie.jpg",
        "We call it the Joker because after you eat one you laugh for another."
      ],
      "fancy cookie" => ["$2.00 each","fancy_cookies.jpg",
        "They taste as good as they look!"
      ]},
      :cakes => {
      "birthday cake" => ["$20.00 each", "birthday_cake.jpg",
        "For all occasions, all flavors and sizes."
      ],
      "wedding cake" => ["Call for pricing","wedding_cake.jpg",
       "The best of the best we tower over the rest. Please come to the bakery to discuss all of the different combinations"
      ],
      "flavored cake" => ["$20.00 each","chocalate_cake.png",
        "We make all kinds of flavors of cake and icings for your imagination."
      ]},
      :muffins => {
      "chocalate chip muffin" => ["$5.00 each","chocalate_muffin.jpg",
        "Savory hot mess with butter, you deserve it!"
      ],
      "blueberry muffin" => ["$5.00 each","blueberry_muffin.jpg",
        "The berries pop in your mouth with juicy sweet flavor"
      ],
      "corn protien muffin" => ["$5.00 each","corn_protien_muffin.jpg",
        "The healthy choice, taste corn and feel your muscles grow."
      ]},
    ]
    @bag = {}
    # @bag << self
  end
  def displayCatalog()
    puts "Here is our catalog:"
    @catalog.each do |element|
      element.each do |k, v|
        puts "#{k} : #{v}"
      end
    end
  end
  def addtoBag()
    @bag[:kind] = @kind
    @bag[:type] = @type
    @bag[:amount] = @amount
  end
  def bagItems()
    @bag.each do |k, v|
      puts "Here is what is in your bag: #{v}"
   end
  end
  def kindOf()
    @kind
  end
  def total()
    total = 0
    if kindOf == "cookie"
      total = @amount * @price_cookie
      puts total
    end
    if kindOf == "cake"
      total = @amount * @price_cake
      puts total
    end
    if kindOf == "muffin"
      total = @amount * @price_muffin
      puts total
    end
  end
end
##############################################
class Cookie < Bag
  attr_accessor :type, :amount
  def initialize(type, amount)
    super("cookie", type, amount)
  end
  def amountOfCookies()
     amount
  end
  def typeOfCookies()
    type
  end
  
end
##############################################
class Cake < Bag
  attr_accessor :type, :amount 
  def initialize(type, amount)
    super("cake",type, amount)
  end
  def amountOfCakes()
    return amount
  end
  def typeOfCakes()
    return type
  end
end
################################################
class Muffin < Bag
  attr_accessor :type, :amount 
  def initialize(type, amount)
    super("muffin",type, amount)
  end
  def amountOfMuffin()
    return amount
  end
  def typeOfMuffins()
    return type
  end
end
rich = Cookie.new("chocalate chip", 4)

franklin = Cake.new("birthday cake", 2)
puts "Amount of cookies "  
puts rich.amountOfCookies()
puts rich.kindOf()
puts "total cost:"
rich.total()

rich.addtoBag()
rich.bagItems()
franklin.addtoBag()
franklin.bagItems()


rich.displayCatalog()
puts rich.typeOfCookies()
puts franklin.amountOfCakes()
puts franklin.kindOf()
franklin.total()
