# frozen_string_literal: true

# examples
world = 'World'
puts 'Hello, World!'
puts "Hello, #{world}!"
puts %(Hello #{world})

# heredoc string
str = <<~HERE
      some
    text
  #{world}
HERE

puts str

puts world.class

# run command
puts `ls -la`

# wtf ????? unsecure
command = 'ls -la'
puts `#{command}`

# string as array
str = 'Hello, world!'
puts str[0] # H
puts str[7, 5] # world
puts str[7..11] # world
puts str[-6..-2] # world

# sub string
puts 'Hello, world!'.sub('l', '-')
puts 'Hello, world!'.gsub('l', '-')

# size of string
puts 'Hello, world!'.size
puts 'Hello, world!'.length

# split
puts ENV['PATH'].split(':')
