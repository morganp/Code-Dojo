#!/usr/bin/env ruby

require 'rubygems'
require 'sequel'


##################################
## Connect to the database
##################################
DB = Sequel.sqlite('./lesson3.db')

   DB.create_table? :posts do
      primary_key :id
      foreign_key :person_id, :persons
      varchar :title
      text :body
      DateTime :date_created
   end

   DB.create_table? :persons do
      primary_key :id
      varchar :first_name
      varchar :last_name
      varchar :short_name
   end

   DB.create_table? :tags do
      primary_key :id
      varchar :tag
   end

#########################
### Insert Data
#########################


   DB[:persons].insert(
      :first_name    => 'John',
      :last_name     => 'Lock',
      :short_name    => 'jlock'
   )

   DB[:persons].insert(
      :first_name    => 'Bugs',
      :last_name     => 'Bunny',
      :short_name    => 'bbunny'
   )
   
   DB[:posts].insert( 
      :title         => 'Post Man Pat', 
      :body          => "has a black and white cat", 
      :person_id     => 1,
      :date_created  => Time.now
   )
   DB[:posts].insert(
      :title         => 'Sandwiches',  
      :body          => "Peanut butter and Marmite, Yum", 
      :person_id     => 1,
      :date_created  => Time.now
   )
   DB[:posts].insert(
      :title         => 'Leaves', 
      :body          => "Grow on trees", 
      :person_id     => 2,
      :date_created  => Time.now
   )

