# frozen_string_literal: true

module MyNamespace
  # array redefine
  class Array
    def to_s
      'my class'
    end
  end
end

p [] # []
p MyNamespace::Array.new

# mixins

module Seo
  attr_accessor :meta_title, :meta_description, :meta_keywords

  def get_data
    'Hello, World!'
  end
end

class Page
  attr_accessor :title, :body
end

class News < Page
  include Seo
  attr_accessor :date
end

class About < Page
  include Seo
  attr_accessor :phones, :address
end

class PhotoCatalog < Page
  attr_accessor :photos
end

# mixins for object

photo_catalog = PhotoCatalog.new
photo_catalog.extend Seo
# ok
p photo_catalog.get_data

# global mixin
module Hello
  def say(name)
    "Hello, #{name}!"
  end
end
extend Hello
puts say('Ruby')
