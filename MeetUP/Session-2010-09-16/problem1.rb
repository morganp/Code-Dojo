class Person
   attr_accessor name, children, parent
   def initialize(name, parent=nil)
      if parent
         self.parent = parent
      end
      self.name =  name
      self.children = []
   end

   def add_child(name)
      child = Person.new(name, self)
      children << child
      child
   end
end

dad = Person.new("bob")
kid = dad.add_child('billy')
puts kid.parent.name
