ORM Lesson-01
=============  
Object-Relational-Mapping

Create SQLite database with SEQUEL and then ActiveRecord 

[Sequel home] [sequel_main]
[Sequel cheat sheet][sequel_cheat]
[ActiveRecord home] [activerecord_main]

[sequel_main]: http://sequel.rubyforge.org/
[activerecord_main]: http://api.rubyonrails.org/classes/ActiveRecord/Base.html 

[sequel_cheat]: http://cheat.errtheblog.com/s/sequel/


Create an sqlite db called ./lesson1.db

Add a table called posts with fields:
 * id (primary key) -ORM does not really worry about this
 * title
 * body
 * person_id (foreign key)

Add a table called people
 * id (primary key)
 * first_name
 * last_name
 * short_name 

Add a table called tags
 * id (primary key)
 * tag

Now add extra coloumns to :posts and set default values
 The default values will be returned for posts added before this field exists until the post is updated
* created_date
* modified_date

