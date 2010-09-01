require 'test/unit'

class ExampleTest < Test::Unit::TestCase
   def test_function1
      assert_equal("Hello", function1())
   end

   def test_function2
      assert_equal(true, function2())
   end
end
