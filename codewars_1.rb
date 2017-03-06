class Person
  attr_reader :name, :other_name
  def initialize(name)
    @name = name
  end

  def greet(other_name)
    "Hi #{other_name}, my name is #{name}"
  end
end

object = Persone.new("Joe")
object.greet("Kate")
