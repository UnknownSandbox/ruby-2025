# frozen_string_literal: true

# symbol init

# symbol :hello # error
# symbol Symbol.new # error
# p symbol # error

p :hello

# cast from string
puts 'white'.to_sym
