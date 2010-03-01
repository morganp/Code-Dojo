#!/usr/bin/env ruby

require 'rubygems'
require 'sequel'


##################################
## Connect to the database
##################################
DB = Sequel.sqlite('./lesson1.db')

unless DB.table_exists? :posts
  DB.create_table :posts do
    primary_key :id
    foreign_key :id, :people
    varchar :title
    text :body
  end
end

unless DB.table_exists? :people
   DB.create_table :people do
      primary_key :id
      varchar :first_name
      varchar :last_name
      varchar :short_name
   end
end

unless DB.table_exists? :tags
   DB.create_table :tags do
      primary_key :id
      varchar :tag
   end
end

#Alter existing table
#This will cause an Error Second time run
if DB.table_exists? :posts
   DB.alter_table :posts do
      add_column :date_created, :varchar  
   end
end




