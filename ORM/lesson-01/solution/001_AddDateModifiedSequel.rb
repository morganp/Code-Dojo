
## Command line to apply Migration
#sequel -m . -M 1 sqlite://lesson1.db

## Command to roll back
#sequel -m . -M 0 sqlite://lesson1.db

#Note: new style header preffered to avoid class name clashes
Class.new(Sequel::Migration) do
#class AddDateModifiedSequel < Sequel::Migration

   def up
      DB.alter_table :posts do
         add_column :date_modified, :varchar
         set_column_default :date_modified, "Monday"
      end
   end

   def down
      DB.alter_table :posts do
         drop_column :date_modified
      end
   end
end
