require 'rubygems'
require 'sequel'

class MigrationSequel < Sequel::Migration
   def self.up
      DB.alter_table :posts do
         add_column :date_created, :varchar
         add_column :date_modified, :varchar   
      end
   end

   def self.down
      DB.alter_table :posts do
         drop_column :date_created
         drop_column :date_modified
      end
   end
end
