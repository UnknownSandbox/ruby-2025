# frozen_string_literal: true

# number = Integer.new # error

# syntax sugar example
puts 2_000_000 + 1_900_200 # 3900200

# classic
puts 0b1010101 # 85
puts 0o755 # 493
puts 0xffcc00 # 16763904

# cast to string
puts 242.to_s(2) # 11110010
puts 242.to_s(8) # 362
puts 242.to_s(16) # f2
