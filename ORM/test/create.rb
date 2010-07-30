#!/usr/bin/env ruby

require 'rubygems'
require 'sequel'

DB = Sequel.sqlite('./lesson3.db')

unless DB.table_exists? :posts
  DB.create_table :posts do
    primary_key :id
    foreign_key :people_id, :people
    varchar :title
    text :body
  end
end

unless DB.table_exists? :peoples
   DB.create_table :peoples do
      primary_key :id
      varchar :first_name
      varchar :last_name
      varchar :short_name
   end
end


   DB[:peoples].insert(
      :first_name    =>'First',
      :last_name     =>'Last',
      :short_name    =>'toad'
   )

   DB[:peoples].insert(
      :first_name    =>'Front',
      :last_name     =>'Back',
      :short_name    =>'willow'
   )


   DB[:posts].insert(
      :title => 'Post Man Pat',
      :body => "has a black and white cat",
      :people_id => 1
   )
   DB[:posts].insert(
      :title => 'Sandwiches',
      :body => "Peanut butter and Marmite, Yum",
      :people_id => 1
   )
   DB[:posts].insert(
      :title => 'Leaves',
      :body => "Grow on trees",
      :people_id => 2
   )
      
