# frozen_string_literal: true

p 1..5 # 1..5
p (1..5).class # Range
p Range.new(1, 5) # 1..5
p Range.new(1, 5, true) # 1...5

puts (1..5).first # 1
puts (1..5).last # 5

range = 1..5
p range.include? 3 # true - истина
p range.include? 7 # false - ложь

p (1..).include? 100_500 # true
p (1..).include?(-1) # false
