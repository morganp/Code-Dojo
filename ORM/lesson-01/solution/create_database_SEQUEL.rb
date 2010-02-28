#!/usr/bin/env ruby

require 'rubygems'
require 'sequel'

require '001_MigrationSequel'


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

#if DB.table_exists? :posts
#   DB.alter_table :posts do
#      add_column :date_created, :varchar
#      add_column :date_modified, :varchar   
#   end
#end


#run migration
#mig = MigrationSequel_001.new

#Migrations
#  class Migration-0001 < Sequel::Migration
#    def up
#      create_table :users do
#        primary_key :id
#        text :username, :unique => true, :null => false
#        text :email, :unique => true, :null => false
#        varchar :password, :size => 40, :null => false
#        date :dob, :null => false
#        boolean :disabled, :default => false
#        timestamp :created_at
#        timestamp :updated_at
#      end
#    end
#
#    def down
#      drop_table :users
#    end
#  end




