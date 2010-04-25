
## Command line to apply Migration
#sequel -m . -M 1 sqlite://lesson2.db

## Command to roll back
#sequel -m . -M 0 sqlite://lesson2.db

#Note: new style header preffered to avoid class name clashes
Class.new(Sequel::Migration) do
#class AddDateModifiedSequel < Sequel::Migration

   def up
      # populate the table
      DB[:posts].insert( 
         :title => 'Post Man Pat', 
         :body => "has a black and white cat", 
         :people_id => 1,
         :date_created => Time.now
      )
      DB[:posts].insert(
         :title => 'Sandwiches',  
         :body => "Peanut butter and Marmite, Yum", 
         :people_id => 1,
         :date_created => Time.now
      )
      DB[:posts].insert(
         :title => 'Leaves', 
         :body => "Grow on trees", 
         :people_id => 1,
         :date_created => Time.now
      )
      
   end

   def down
      #Have not covered retrieving data yet to remove matching columns 
   end
end
