$: << __dir__

puts
puts "in #{__FILE__}"

p defined? A::E             # => nil
puts

class A
  p defined? E              # => "constant"
  p defined? A::E           # => nil
  puts

  p A.const_defined? :E     # => false
  p const_defined? :E       # => false
  puts
end

p defined? A::E             # => nil
puts

p A.const_defined? :E       # => false
puts

class AA < A
  p defined? E              # => nil
  p defined? A::E           # => nil
  puts

  p A.const_defined? :E     # => false
  p const_defined? :E       # => false
  puts
end

p defined? AA::E            # => nil
puts

p AA.const_defined? :E      # => false

class A
  puts
  puts "defining E = 3"
  puts
  E = 1

  p defined? E              # => "constant"
  p defined? A::E           # => "constant"
  puts

  p A.const_defined? :E     # => true
  p const_defined? :E       # => true
  puts
end

p defined? A::E             # => "constant"
puts

p A.const_defined? :E       # => true
puts

class AA < A
  p defined? E              # => nil
  p defined? A::E           # => nil
  puts

  p A.const_defined? :E     # => false
  p const_defined? :E       # => false
  puts
end

p defined? AA::E            # => "constant"
puts

p AA.const_defined? :E      # => true

puts
puts "done #{__FILE__}"
