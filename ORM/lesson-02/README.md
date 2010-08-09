Lesson-02
=========

Following on from Lesson 1 we shall be using basic commands to insert data into the database using Sequel and ActiveRecord

To create the database used in the first example just run:

    ruby create_database.rb

Migrations should always be used when modifing tables but are not normally used when adding or removing data. So in this lesson we will setup the database model and create/add elements to it.

In sequel and then Active Record add data to the Table 'posts' completing columns 'peopel_id=1, title, body, date_created=Time.now'

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


OLD lesson based on Migrations
------------------------------

Now write a migration to add data to the Table 'posts' completing columns 'peopel_id=1, title, body, date_created=Time.now'
Try writing it in Sequel first in the current folder in a file called 001_Sequel_add_post_data.rb, then repeat with ActiveRecord in the migrate folder, called 001_AR_add_post_data.

To run the Sequel migration in the current folder:

    sequel -m . -M 1 sqlite://lesson2.db

To run the ActiveRecord migration with the included rake file:

   rake db:migrate VERSION=0 

My solution is in the soloutions folder.
