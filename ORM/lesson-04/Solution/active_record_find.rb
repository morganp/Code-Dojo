require 'rubygems'
require 'active_record'


ActiveRecord::Base.establish_connection(
  :adapter   => 'sqlite3',
  :database  => '../lesson4.db'
)

# A Many to One Relationship
class Post < ActiveRecord::Base
   belongs_to :person
   ## This line could also be setup with (for non-standard foreign key names)
   #belongs_to :person, :foreign_key => :person_id 
end

class Person <  ActiveRecord::Base
   has_many :post
end

def printperson( person )
   puts
   puts person.first_name.to_s + ' ' + person.last_name.to_s
end

def printpost( post )
   puts 
   puts post.title
   puts post.body
end

# 1a) Find First Post
@post = Post.first #=> Post.find(:first)
printpost( @post )


# 1b) Find First Person
@person = Person.first #=> Person.find(:first)
printperson( @person )


# 2) Find Person who belongs to first Post
@person1 = @post.person
printperson( @person1 )


# 3) Iterate Over all posts belonging to first Person
@person.post.each do |post|
   printpost( post )
end

