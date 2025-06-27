# frozen_string_literal: true

p [1, 2, 3, 4, 5]
arr = [1, 2, 3, 4, 5]
p arr[0] # 1
p arr[-1] # 5
p arr[2, 2] # [3, 4]
p arr[2..3] # [3, 4]
p [1, 'hello', 3, ['first', 2]]

colors = %w[blue red white yellow]
p colors

colors = %i[red orange yellow green blue indigo violet]
p colors

# destructor
p(*colors)

fst, *snd = ['Hello', 'world', '!']
p fst # "Hello"
p snd # ["world", "!"]
