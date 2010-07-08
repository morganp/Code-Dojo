Ruby Katas etc
==============
Quick presintation [Striaght Up RSpec][rspec]  
[EdgeCase Ruby Koans][edgeKoans]  

[rspec]: http://www.slideshare.net/gsterndale/straight-up-rspec
[edgeKoans]: http://github.com/edgecase/ruby_koans

Ruby Conf Videos
----------------

Scottish Ruby Confrerence [2008][scotrub2008] [2009][scotrub2009] [2010][scotrub2010]  
Ruby Con [2007][rub2007] [2008][rub2008] [2009][rub2009] [2010][rub2010]  
MountainWest [2008][Mwest2008] [2009][Mwest2009] [2010][Mwest2010]  

[Mwest2010]: http://mwrc2010.confreaks.com/
[Mwest2009]: http://mwrc2009.confreaks.com/
[Mwest2008]: http://mwrc2008.confreaks.com/

[scotrub2010]: http://video2010.scottishrubyconference.com/
[scotrub2009]: http://www.engineyard.com/blog/community/scotland-on-rails/
[scotrub2008]: http://feeds.feedburner.com/ScotlandOnRailsConference2008

[rub2010]: http://rubyconf2010.confreaks.com/
[rub2009]: http://rubyconf2009.confreaks.com/
[rub2008]: http://rubyconf2008.confreaks.com/
[rub2007]: http://rubyconf2007.confreaks.com/



[vital_ruby_zip]: http://onestepback.org/download/vital_ruby_lab06.zip
[vital_ruby_tgz]: http://onestepback.org/download/vital_ruby_lab06.tgz
[onestep]: http://onestepback.org/download/

Plans for a tutorial
====================

first
-----

irb

puts 'heelloworld!'

variable types




function definitions

Numbers
1 Integer (Fixnum)
100_000_000 Integer (Bignum >2**31)
2.5 Float

and how 1/2 is integer
1.0/2 is float
1.to_f / 2 is float

Strings
difference between '' and ""

morganp add

Java / C Explicit typeing to name (LHS)
int x = 1 ; //x is always an int

y = 1 #RHS is Implicitly an integer buy y is free to point at another object of any type.



symbols
Nil
 morganp to add  ||= very useful function


variable scope
local
CONSTANT
$global
@instance
@@class_instanace

Unit testing

Arrays

Hashes

Classes
 initialize
 to_s




Optional Parameters
-------------------

def create_person(first, last, city="", zip="", phone="")

end

Simple with clear function definition. Must be specified in oerder.
Upgrade path unclear.


def create_person(first, last, options={})
   city     = options[:city]  || ""
   zip      = options[:zip]   || ""
   phone    = options[:phone] || ""
end

x = create_person('Dave', 'Smith', :phone => '01234', :city=>'NY' )

Options can be out of order, easy to add new ones.
Definition of options is not explicit


TODO
====

In-Line the Callable lambda ?

next
----

get set vs attr_reader,write,accessor

next section
------------

[1,2,3]each do |n|
   puts
end

[1,2,3].each_with_index do |n, index|
   puts
end

next
----

Open text file, write text file

string manipulation,

intro on regular expressions
should cover
^start
end$  anchors

(hello)(world) groupings $1 $2

also cover gsub, ? and ! function modifiers.

* 0 or more
+ 1 or more
? 0 or 1
. any character

[list]
[a-c] ranges

/expr/i ignore case
/expr/ !~ 'zebra' #not match

http://rubular.com   On-line test
http://www.ruby-doc.org/docs/ProgrammingRuby/html/language.html#UJ

Inheritance



=-* are functions

def +(y)

end

next
----

useful methods.

.inspect
.methods

has_key? #To filter messages not sure what this is for

respond_to?
method_missing

can always open up a class again and append methods, this allows monkey patching.

modules ?

Spaceship Operator
a <=> b
 # => -1 if a < b
 # => 0 if a == b
 # => 1 if a > b

def <=>(other)
   @current <=> other
end

replaces

def <(other)
   @current < other
end

def <=

def >

def >=

def ==


Class Environment
-----------------

this look simialr to the object refferece models in the 2009 Scot Ruby conf pres

Singleton Methods ? what are these

class methods
ie all books

class Book
   def Book.all_books

   end
end

class Book
   class << self #Opens singleton class
      def all_books
         @all_books ||= []
      end
   end

   ...

end

introduces ||=



