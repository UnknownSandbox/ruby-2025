# p - alias for puts and inspect
hello_world = "'Hello, world!'"
p hello_world

# string escape example
escape_example = 'Hello, "world"!'
p escape_example
puts escape_example

# methods list
class Hello
  def greeting
    puts 'Hello, method!'
  end
end

hello_world = Hello.new
puts "Methods length of Hello class: #{hello_world.methods.length}"

# response_to?
is_response_to = 3.respond_to? 'between?'
puts "Is response to 'between?': #{is_response_to}"

# clone any object
obj = Object.new
obj_clone = obj.clone # obj.dup

puts obj_clone, obj

# another magic
puts __FILE__ # main.rb
puts __LINE__ # 32

# safe access (why not use ? symbol)
hello = 'Hello, world!'
p hello.index('ruby')&.odd?

# check variable definition
p defined? not_exists

# sugar
p true or false
p true and false # true, wat ???
