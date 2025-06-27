# I think its outdated, just use debugger
require 'pry'

class Hello
  def greeting
    puts 'Hello, world!'
  end
end

hello = Hello.new
object = Object.new

hello.greeting
binding.pry

# error (ide show no error)
object.greeting