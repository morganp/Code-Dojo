Kata: Blocks and Iterators
==========================

For this Kata I would you will start with a basic class and add block based iterating functions which handle the block in various ways. Most of the information on how to complete the tasks is contained in [ProgrammingRuby][].

Expand the class given below by completing these tasks:  
1) Mixin Enumerable to add the .map function, for @arr.

2) Create a map_row( row_id ) method for @arr_of_arr
NB: yield may be useful

3) Create a bang version of map_row, map_row!( row_id )
NB: this shoulds probably call the previous method

My solution is in solution.rb

    class MassivArray
      attr_reader :arr_of_arr, :arr
      def initialize
         @arr_of_arr = [[1,2,3],[4,5,6],[7,8,9]]
         @arr        = [1,2,3,4,5,6,7,8,9]
      end

    end

[ProgrammingRuby]: http://ruby-doc.org/docs/ProgrammingRuby/html/tut_containers.html
