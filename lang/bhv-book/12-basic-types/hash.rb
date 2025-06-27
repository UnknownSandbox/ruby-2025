# frozen_string_literal: true

h = { 'first' => 'hello', 'second' => 'world' }
puts h['second'] # world

h = { first: 'hello', second: 'world' }
puts h[:first]
