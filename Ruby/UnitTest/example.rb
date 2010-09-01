#!/usr/bin/env ruby

require 'test/unit/ui/console/testrunner'
require 'example_test'
require 'pp'

def function1
   return "Hello"
end

def function2
   return false
end

Test::Unit::UI::Console::TestRunner.run(ExampleTest)
