Session-04
==========

Creating a central git repo
   mkdir -p ~/repo/testing.git
   cd testing.git
   git --bare init

Now try to create local version
   cd ~/repo/
   mkdir local-test
   cd local-test
   git init
   touch README.md
   git add README.md
   git commit -a -m '*Added README.md'

   git remote add origin ../testing.git
   git push origin master



From Phils review
Ruby defaults for functions
   split_it(a=0, b=arr.lenght)

Multiple assignements on one line
   a,b,c = 1,2,3

This can be used in Functions

   x,y,z = func_a()
   def func_a()
      return 1,2,3
   end

The last line in a function is automatically returned
   def multilpy(a b)
      c = a * b
   end
