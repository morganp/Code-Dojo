Lesson-04
=========

Following on from Lesson 3 we shall be investigating how to access data with one to many relationships. Using commands to find Person and Posts and find a Persons Posts, and find the the Person which a Post belongs to.

To create the database used in the last example just run:

    ruby create_database.rb

Migrations should always be used when modifing tables but are not normally used when adding or removing data. In this lesson we will just be interigating the database.

ActiveRecord Hint
=================

For the active record exercise it might be useful to look up these commands (below) when setting up the Model.

:belongs_to
:has_many

Exercise
========

In Sequel and then Active Record Print out the first post, as before. Then print out the first person.

    Post Man Pat
    has a black and white cat
    
    John Lock

Next try to print out the Person beloning to the first Post.

    John Lock

Last exercise for this lesson iterate over all the posts belonging to the first person.

    Post Man Pat
    has a black and white cat
    
    Sandwiches
    Peanut butter and Marmite, Yum


Again a good way to visualise the database is the [sqlite firefox plugin][ffox_plugin] 

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


