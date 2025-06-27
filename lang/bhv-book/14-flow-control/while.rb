print 'Set iterations: '

max_iterates = gets.to_i
i = 0
while i < max_iterates
  next if i.even?

  puts 'Hello, world!'
  i += 1
  break if i >= 10
end

puts ''
i = 0

puts 'Hello, world!' while (i += 1) <= max_iterates

puts ''
i = 0

begin
  puts 'Hello, world!'
  i += 1
end while i < max_iterates
