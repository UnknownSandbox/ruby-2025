rainbow = %w[red orange yellow green gray indigo violet]
rainbow.each { |color| puts color }

5.times { |i| puts i }

5.upto(10) { |i| puts i }
10.downto(5) { |i| puts i }

rainbow = %w[red orange yellow green gray indigo violet]
rainbow.each_with_index { |color, i| puts "#{i}: #{color}" }

result = [1, 2, 3, 4, 5].map { |x| x + 1 }
p result # [2, 3, 4, 5, 6]

arr = [1, 2, 3, 4, 5].map { |x| x * x }
p arr # [1, 4, 9, 16, 25]

p([1, 2, 3, 4, 5].select { |x| x&.even? }) # [2, 4]
p(arr.reject { |x| x&.even? }) # [1, 3, 5]

p([1, 2, 3, 4, 5].select { |x| x.even? }.map { |x| x * x }) # [4, 16]

p([1, 2, 3, 4, 5].reduce(10) { |m, x| m * x }) # 120

arr = [1, 2, 3, 4, 5].each_with_object([]) do |x, m|
  m << x * x if x.even?
end
p arr # [4, 16]

arr = [1, 2, 3, 4, 5].each_with_object([]) do |x, m|
  m << x * x if x.even?
end
p arr # [4, 16]

result = (1..7).select { |x| x.even? }
               .tap { |x| puts "debug: #{x}" }
               .reduce { |m, x| m + x }
p result

rainbow = %w[red orange yellow green gray indigo violet]
arr = rainbow.map.with_index { |color, i| "#{i}: #{color}" }
p arr
