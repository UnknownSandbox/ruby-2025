begin
  puts 'Hello, world!'
  puts 'Hello, Ruby!'
end

def my_loop
  puts 'Start'
  yield
  puts 'End'
end
my_loop { puts 'Hello, world!' }

def my_loop
  n = 0
  yield n += 1
  yield n += 1
  yield n + 1
end
my_loop { |i| puts "#{i}: Hello, world!" }
