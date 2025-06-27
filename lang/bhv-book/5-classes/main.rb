# Object as class
obj = Object.new
puts obj.object_id

# custom class example
class Hello
end

hello_object = Hello.new
puts "Class name of hello_object: #{hello_object.class}"


