ORM Lesson-01
=============
 
ORM => Object-Relational-Mapping

Create SQLite database with Sequel and then ActiveRecord.  
To visualise the database [sqlite firefox plugin][ffox_plugin] can be used.

Useful links  
[Sequel home] [sequel_main],
[Sequel cheat sheet][sequel_cheat],
[ActiveRecord home] [activerecord_main],
[ActiveRecord cheat sheet][ar_cheat].

[ffox_plugin]: https://addons.mozilla.org/en-US/firefox/addon/5817
[sequel_main]: http://sequel.rubyforge.org/
[activerecord_main]: http://api.rubyonrails.org/classes/ActiveRecord/Base.html 
[ar_cheat]: http://dizzy.co.uk/ruby_on_rails/cheatsheets/rails-migrations

[sequel_cheat]: http://cheat.errtheblog.com/s/sequel/


Create an sqlite db called ./lesson1.db (./lesson1_AR.db for AcitveRecord )

Add a table called posts with fields:

* id (primary key) -ORM does not really worry about this
* title
* body
* person_id (foreign_key for :people)

Add a table called people (foreign key mappings will be to person_id, ORM models will be called Person):

* id (primary key)
* first_name
* last_name
* short_name 

Add a table called tags:

* id (primary key)
* tag

Now add extra columns to :posts and set default values
 The default values will be returned for posts added before this field exists until the post is updated

* created_date

ActiveRecord Hint
-----------------

Active record can not manipulate the database directly, for one when you create the connection you do not get a DB object to alter the database. Active Record can only create/alter tables when running a migration, before we introduce migrations you can use the following to create tables:

    ActiveRecord::Migration.class_eval do
      create_table :posts do |t|
            t.string  :title
            t.text :body
       end
    end


Introducing Migrations
----------------------

Since we are often working on a development database we need an easy way of applying changes created on this databae to the production database. In development it is also nice if we can roll back changes if they did not work as expected.

This is were migrations come in, they have an up and down method. The up is applied when moving to that version, down is called when reverting.

create a migration file called 001_AddDateModifiedSequel.rb and add this to posts:

* modified_date

To apply the migration call
    $ sequel -m . -M 1 sqlite://lesson1.db  

To revert/rollback call
    $ sequel -m . -M 0 sqlite://lesson1.db

This section of the lesson was based on [steamcodes blog][sequel_mig]

ActiveRecord Migrations
-----------------------

There is a little complexity in setting up active record migrations outside of Rails (A web framework), so I have provided a rake file which will run the active record migration.

The Rake script expects migrations to be in a seperate folder called ./migrate (the standard location is ./db/migrate) and the first should begin with 001_

To apply the migrations call:
    $ rake db:migrate VERSION=1

To roll back:
    $ rake db:migrate VERSION=0



The Rake script is based on an example on [Aizat Faizs blog][rake_script]

[sequel_mig]: http://steamcode.blogspot.com/2009/03/sequel-migrations.html
[rake_script]: http://blog.aizatto.com/2007/05/27/activerecord-migrations-without-rails/
