
## Command line to apply Migration
#rake db:migrate VERSION=1

## Command to roll back
#rake db:migrate VERSION=0

class AddDateModifiedActiveRecord < ActiveRecord::Migration

   def self.up
      add_column :posts, :date_modified, :varchar, :default => "Monday"
   end

   def self.down
      #Not completed lesson that finds data but this should remove lines added above
   end

end
