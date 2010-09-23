#!/usr/bin/env ruby

require 'rubygems'
require 'sequel'


##################################
## Connect to the database
##################################
DB = Sequel.sqlite('./lesson4.db')

  DB.create_table :posts do
    primary_key :id
    foreign_key :person_id, :people
    varchar :title
    text :body
    DateTime :date_created
  end

   DB.create_table :people do
      primary_key :id
      varchar :first_name
      varchar :last_name
      varchar :short_name
   end

   DB.create_table :tags do
      primary_key :id
      varchar :tag
   end


##############################
## 
##############################
   DB[:people].insert(
      :first_name    => 'John',
      :last_name     => 'Lock',
      :short_name    => 'jlock'
   )

   DB[:people].insert(
      :first_name    => 'Bugs',
      :last_name     => 'Bunny',
      :short_name    => 'bbunny'
   )
   
   DB[:posts].insert( 
      :person_id     => 1,
      :title         => 'Post Man Pat', 
      :body          => 'has a black and white cat', 
      :date_created  => Time.now
   )
   DB[:posts].insert(
      :person_id     => 1,
      :title         => 'Sandwiches',  
      :body          => 'Peanut butter and Marmite, Yum', 
      :date_created  => Time.now
   )
   DB[:posts].insert(
      :person_id     => 2,
      :title         => 'Leaves', 
      :body          => 'Grow on trees', 
      :date_created  => Time.now
   )

   




