```ruby
class MyClass
  attr_accessor :value # Add attr_accessor to make value both readable and writable

  def initialize(value)
    @value = value
  end
end

my_object = MyClass.new(10)
puts my_object.value # Output: 10

my_object.value = 20 # Now this works correctly!
puts my_object.value # Output: 20
```
Alternatively, explicitly define a `value=` method:
```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def value
    @value
  end

  def value=(new_value)
    @value = new_value
  end
end
```