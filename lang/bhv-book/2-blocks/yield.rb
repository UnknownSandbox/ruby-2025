# yield example like callback
def greeting
  yield 'Hello', 'Ruby'
end

greeting do |interjection, noun|
  puts "#{interjection}, #{noun}!" # Hello, Ruby!
end

# diff params example
def greeting2
  yield 'Hello', 'Ruby', '!'
end

greeting2 do |interjection, noun|
  puts "#{interjection}, #{noun}!" # Hello, Ruby!
end

greeting2 do |fst, snd, thd, fth|
  p fst # "Hello"
  p snd # "Ruby"
  p thd # "!"
  p fth # nil
end

# block_given?
def my_loop
  return unless block_given?

  yield while true
end
my_loop

# yield return value
def greeting3
  name = block_given? ? yield : 'world'
  "Hello, #{name}!"
end
puts greeting3 # Hello, world!
puts(greeting3 { 'Ruby' }) # Hello, Ruby!
hello = greeting3 do
  print 'Пожалуйста, введите имя '
  gets.chomp
end
puts hello

# block as parameter
def greeting(&block)
  block.call
end
greeting { puts 'Hello, world!' }
