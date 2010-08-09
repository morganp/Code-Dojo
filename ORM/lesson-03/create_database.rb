#!/usr/bin/env ruby

require 'rubygems'
require 'sequel'


##################################
## Connect to the database
##################################
DB = Sequel.sqlite('./lesson3.db')

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


##############################
## 
##############################
   DB[:people].insert(
      :first_name    => 'TooMe',
      :last_name     => 'TooYou',
      :short_name    => 'MeYou'
   )

   DB[:people].insert(
      :first_name    => 'Wicker',
      :last_name     => 'Man',
      :short_name    => 'Wick'
   )
   
   DB[:posts].insert( 
      :title         => 'Post Man Pat', 
      :body          => "has a black and white cat", 
      :people_id     => 1,
      :date_created  => Time.now
   )
   DB[:posts].insert(
      :title         => 'Sandwiches',  
      :body          => "Peanut butter and Marmite, Yum", 
      :people_id     => 1,
      :date_created  => Time.now
   )
   DB[:posts].insert(
      :title         => 'Leaves', 
      :body          => "Grow on trees", 
      :people_id     => 2,
      :date_created  => Time.now
   )

   




