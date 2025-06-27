# frozen_string_literal: true

h = { 'first' => 'hello', 'second' => 'world' }
puts h['second'] # world

h = { first: 'hello', second: 'world' }
puts h[:first]

def greeting(params)
  puts params.delete :first # world
  puts params.delete :second # Ruby
  p params # {:third=>"hello"}
end
greeting first: 'world', second: 'Ruby', third: 'hello'

alias hello greeting
undef greeting

hello first: 'world', second: 'Ruby', third: 'hello'
