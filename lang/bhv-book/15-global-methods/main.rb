def convert(value, factor = 1000, *params)
  p params
  value * factor
end

puts convert(11, 1024, 11, 22) # 11264

def array_params(x, y, z)
  p x # 6
  p y # 3
  p z # 2
end
point = [6, 3, 2]
array_params(*point)

def say_my_name(name:, status:)
  puts name, status
end

say_my_name name: 'heisenberg', status: 'danger'
