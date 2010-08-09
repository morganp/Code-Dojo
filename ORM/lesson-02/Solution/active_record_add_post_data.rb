require 'rubygems'
require 'active_record'

ActiveRecord::Base.establish_connection(
  :adapter   => 'sqlite3',
  :database  => '../lesson2.db'
)

# A Many to One Relationship
class Post < ActiveRecord::Base
end


Post.create(
   :person_id => 1,
   :title => "Second Post",
   :body => "Body of Second Post",
   :date_created => Time.now
)
