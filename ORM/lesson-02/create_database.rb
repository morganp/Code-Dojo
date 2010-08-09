#!/usr/bin/env ruby

require 'rubygems'
require 'sequel'


##################################
## Connect to the database
##################################
DB = Sequel.sqlite('./lesson2.db')

  DB.create_table? :posts do
    primary_key :id
    foreign_key :people_id, :people
    varchar :title
    text :body
    DateTime :date_created
  end

   DB.create_table? :people do
      primary_key :id
      varchar :first_name
      varchar :last_name
      varchar :short_name
   end

   DB.create_table? :tags do
      primary_key :id
      varchar :tag
   end

