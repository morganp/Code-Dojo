#!/usr/bin/env ruby

require 'rubygems'
require 'active_record'

ActiveRecord::Base.establish_connection(
    :adapter   => "sqlite3",
    :database  => "./lesson3.db"
)

#http://snippets.dzone.com/posts/show/3097
#http://api.rubyonrails.org/classes/ActiveRecord/Base.html#M001880

class People < ActiveRecord::Base
    has_many :post
end

class Post < ActiveRecord::Base
    belongs_to :people
end

@person = People.find(:first)
puts @person.last_name

@post = Post.find(:first)
puts @post.body

puts @post.people.first_name

@person.post.each do |post|
   puts post.body
end
