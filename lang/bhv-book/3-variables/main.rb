sum_result = 2 + 2
puts "sum_result: #{sum_result}"

CONST = 12
puts "CONST: #{CONST}"

# warning, not error. value will be redefined
# CONST = 13

puts  "Ruby version: #{RUBY_VERSION}"

num = 2 # local
$num = 2 # global
def redefine_vars
  num = 1
  $num = 1

  p num
end

redefine_vars

p num # 2
p $num # 1

p global_variables # list of all global variables
puts $LOAD_PATH # you can add your own path
puts $PROGRAM_NAME # you can change it

# ticket
class Ticket
  attr_reader :price # property

  def date
    @@date
  end

  def set_date(date)
    @@date = date # property
  end

  def set_price(price)
    @price = price # property
  end

  def instance_vars
    instance_variables
  end
end

first = Ticket.new
first.set_price(2000)
first.set_date('01.01.2000')
second = Ticket.new
second.set_price(1000)
first.set_date('02.02.2002')

puts 'First'
puts "Price: #{first.price}"
puts "Date: #{first.date}" # global date
puts 'Second'
puts "Price: #{second.price}"
puts "Date: #{second.date}"

puts first.instance_vars
puts Ticket.class_variables
