require 'rubygems'
require 'sequel'


##################################
## Connect to the database
##################################
DB = Sequel.sqlite('../lesson3.db')

# populate the table
DB[:posts].insert( 
   :people_id => 1,
   :title => 'Post Man Pat', 
   :body => "has a black and white cat", 
   :date_created => Time.now
)
      
