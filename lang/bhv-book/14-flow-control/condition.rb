false_condition = 2 > 3
true_condition = 2 < 3

if true_condition
  puts 'Hello'
  puts 'World'
  p true_condition
end

unless false_condition
  puts 'Hello'
  puts 'World'
  p false_condition
end

if false_condition
  puts 'nothing to do here'
elsif true_condition
  puts 'Hello World!'
else
  puts 'nothing to do here again'
end

result = (if true_condition
            'its true'
          else
            'its false'
          end)

p result

rand_result = rand(0..1)&.zero? ? 100 : 200
p rand_result

number = rand(0..2)
case number
when 0
  puts 'Zero'
when 1
  puts 'One'
else
  puts 'Two'
end
