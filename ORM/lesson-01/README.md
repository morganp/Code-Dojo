ORM Lesson-01
------------- 
Object-Relational-Mapping

Create SQLite database with SEQUEL and then ActiveRecord
To viualise data the [sqlite firefox plugin][ffox_plugin]


[Sequel home] [sequel_main]
[Sequel cheat sheet][sequel_cheat]
[ActiveRecord home] [activerecord_main]

[ffox_plugin]: https://addons.mozilla.org/en-US/firefox/addon/5817
[sequel_main]: http://sequel.rubyforge.org/
[activerecord_main]: http://api.rubyonrails.org/classes/ActiveRecord/Base.html 

[sequel_cheat]: http://cheat.errtheblog.com/s/sequel/


Create an sqlite db called ./lesson1.db

Add a table called posts with fields:
 * id (primary key) -ORM does not really worry about this
 * title
 * body
 * person_id (foreign key)

Add a table called people:
 * id (primary key)
 * first_name
 * last_name
 * short_name 

Add a table called tags:
 * id (primary key)
 * tag

Now add extra coloumns to :posts and set default values
 The default values will be returned for posts added before this field exists until the post is updated
* created_date

Introducing Migrations
----------------------

Since we are often working on a development database we need an easy way of applying changes created on this databae to the production database. In development it is also nice if we can roll back changes if they did not work as expected.

This is were migrations come in, they have an up and down method. The up is applied when moving to that version, down is called when reverting.

create a migration file called 001_AddDateModifiedSequel.rb and add this to posts:
* modified_date

To apply the migration call $ sequel -m . -M 1 sqlite://lesson1.db
To revert/rollback call $ sequel -m . -M 0 sqlite://lesson1.db

This section of the lesson was based on [steamcodes blog][sequel_mig]

[sequel_mig]: http://steamcode.blogspot.com/2009/03/sequel-migrations.html
