#!/usr/bin/env ruby

require 'rubygems'
require 'active_record'


##################################
## Connect to the database
##################################

ActiveRecord::Base.establish_connection(
	:adapter   => 'sqlite3',
	:database  => './lesson1_AR.db'
)

## Not sure how to create the foreign keys
## Although will be linking through intermediate tables
ActiveRecord::Migration.class_eval do
  create_table :posts do |t|
        t.string  :title
        t.text :body
   end

   create_table :people do |t|
      t.string :first_name
      t.string :last_name
      t.string :short_name
   end

   create_table :tags do |t|
      t.string :tags
   end 
end


#Alter existing table
#This will cause an Error Second time run

#add_column :table, :new_coloumn,  :type
ActiveRecord::Migration.class_eval do
	add_column :posts, :date_created, :string
end


