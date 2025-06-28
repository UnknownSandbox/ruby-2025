# Object as class
obj = Object.new
puts obj.object_id

# custom class example
class Hello
end

hello_object = Hello.new
puts "Class name of hello_object: #{hello_object.class}"

# wat ????
class HelloWorld
  puts 'start' # work like static constructor
  puts 'end'
end

hello = HelloWorld.new
p hello

# car
class Car
  def title
    'BMW X7'
  end

  def description
    'b m w'
  end

  attr_reader :engine

  def build
    @engine = Engine.new
  end

  # engine
  class Engine
    def cylinders
      6
    end

    def volume
      3
    end

    def power
      250
    end
  end
end

car = Car.new
car.build
puts car.title # BMW X7
puts car.description
puts car.engine.cylinders # 6
puts car.engine.volume # 3
puts car.engine.power # 250

engine = Car::Engine.new

puts engine.cylinders # 6
puts engine.volume # 3
puts engine.power # 250

# class with constructor
class Ticket
  def initialize
    @price = 500
  end

  attr_reader :price
end

ticket = Ticket.new
puts ticket.price

# ticket with constructor with params
class Ticket2
  def initialize(price)
    @price = price
  end

  attr_reader :price

  private

  def set_price(price)
    @price = price
  end
end

ticket = Ticket2.new 800
puts ticket.price
puts ticket

ticket = Ticket.allocate
puts ticket.price.nil?
puts ticket

# inheritance
class Ticket3 < Ticket2
  # remove method from base class
  remove_method :set_price
  attr_reader :date
end

# dynamic base class. Wat ?
class Child < rand(0..1)&.zero? ? String : Integer
end
