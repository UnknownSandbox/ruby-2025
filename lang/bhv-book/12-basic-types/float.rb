# frozen_string_literal: true

puts 0.00012 # 0.00012
puts 1.2e-4 # 0.00012
puts 346.1256 # 346.1256
puts 3.461256e+2 # 346.1256
puts 1.8e307 # 1.8E+307
puts 1.8e308 # Infinity
puts 1.8e308 - 1.0e307 # Infinity
puts 0 / 0.0 # NaN
puts 1 - 0 / 0.0 # NaN

number = 42.0
infpos = 100 / 0.0
infneg = -100 / 0.0

p number.infinite? # nil
p infpos.infinite? # 1
p infneg.infinite? # -1
p number.nan? # fal

puts 2.class # Integer
puts 2.0.class # Float
puts (2 + 2.0).class # Float
