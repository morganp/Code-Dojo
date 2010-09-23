require 'rubygems'
require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter   => 'sqlite3',
  :database  => '../lesson3.db'
)

# A Many to One Relationship
class Post < ActiveRecord::Base
end

def printpost( post )
   puts 
   puts post.title
   puts post.body
end

@post = Post.first
printpost( @post )

@post = Post.last
printpost( @post )


@post = Post.find_by_id(2)
printpost( @post )

#More verbose method of above
@post = Post.find(:first, :conditions => ["id = ?", 2] )
printpost( @post )

puts
puts
puts "Now Find All posts"
@posts = Post.all #=> Post.find(:all)

@posts.each do |post|
   printpost( post )
end
