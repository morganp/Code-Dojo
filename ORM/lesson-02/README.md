Lesson-02
=========

Following on from Lesson 1 we shall be using basic commands to insert data into the database using Sequel and ActiveRecord

To create the database used in the first example just run:

    ruby create_database.rb

Now write a migration to add data to the Table 'posts' completing columns 'peopel_id=1, title, body, date_created=Time.now'
Try writing it in Sequel first in the current folder in a file called 001_Sequel_add_post_data.rb, then repeat with ActiveRecord in the migrate folder, called 001_AR_add_post_data.

To run the Sequel migration in the current folder:

    sequel -m . -M 1 sqlite://lesson2.db

To run the ActiveRecord migration with the included rake file:

   rake db:migrate VERSION=0 

My solution is in the soloutions folder.
