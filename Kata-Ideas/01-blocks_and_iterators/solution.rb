class MassivArray
   include Enumerable 
   attr_reader :arr_of_arr, :arr
   def initialize
      @arr_of_arr = [[1,2,3],[4,5,6],[7,8,9]]
      @arr        = [1,2,3,4,5,6,7,8,9]
   end

   def each( &block )
      @arr.each( &block )
   end

   def map_row( row_id )
      result = @arr_of_arr[row_id].map do |x|
          yield( x )
      end
   end

   def map_row!( row_id, &block )
      @arr_of_arr[row_id] = map_row( row_id, &block )
   end

end


if $0 == __FILE__
   require 'pp'
   arr = MassivArray.new
   b = arr.map do |y|
      y**2
   end
   pp b

   pp arr.arr_of_arr
   b = arr.map_row( 1 ) { |y| y**2 }
   pp b
   pp arr.arr_of_arr

   pp arr.arr_of_arr
   b = arr.map_row!( 1 ) { |y| y**2 }
   pp b
   pp arr.arr_of_arr

end
