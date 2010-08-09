require 'rubygems'
require 'active_record'


ActiveRecord::Base.establish_connection(
  :adapter   => 'sqlite3',
  :database  => '../lesson3.db'
)

# A Many to One Relationship
class Posts < ActiveRecord::Base
   belongs_to :Person
end

class Person <  ActiveRecord::Base
   has_many :Posts
end

#Find one Person
@person = Person.find(:first)
puts @person.first_name.to_s + ' ' + @person.last_name.to_s
@person.posts


@posts = Posts.find(:all)
#@posts.each do |post|
#   puts post.title
#   puts post.person.first_name
#end
@posts.person



