$: << __dir__

puts
puts "in #{__FILE__}"

p defined? A::B             # => nil
p defined? A::C             # => "constant"
puts

class A
  p defined? B              # => "constant"
  p defined? A::B           # => nil
  p defined? C              # => "constant"
  p defined? A::C           # => "constant"
  puts

  p A.const_defined? :B     # => false
  p const_defined? :B       # => false
  puts

  p A.const_defined? :C     # => true
  p const_defined? :C       # => true
  puts
end

p defined? A::B             # => nil
p defined? A::C             # => "constant"
puts

p A.const_defined? :B       # => false
p A.const_defined? :C       # => true
puts

class AA < A
  p defined? B              # => nil
  p defined? A::B           # => nil
  p defined? C              # => "constant"
  p defined? A::C           # => "constant"
  puts

  p A.const_defined? :B     # => false
  p const_defined? :B       # => false
  puts

  p A.const_defined? :C     # => true
  p const_defined? :C       # => true
  puts
end

p defined? AA::B            # => nil
p defined? AA::C            # => "constant"
puts

p AA.const_defined? :B      # => false
p AA.const_defined? :C      # => true

puts "require 'a/d'"
require 'a/d'

class A
  puts
  puts "defining B = 1"
  puts
  B = 1
end

p defined? A::B             # => "constant"
p defined? A::C             # => "constant"
puts

class A
  p defined? B              # => "constant"
  p defined? A::B           # => "constant"
  p defined? C              # => "constant"
  p defined? A::C           # => "constant"
  puts

  p A.const_defined? :B     # => true
  p const_defined? :B       # => true
  puts

  p A.const_defined? :C     # => true
  p const_defined? :C       # => true
  puts
end

p defined? A::B             # => "constant"
p defined? A::C             # => "constant"
puts

p A.const_defined? :B       # => true
p A.const_defined? :C       # => true
puts

class AA < A
  p defined? B              # => "constant"
  p defined? A::B           # => "constant"
  p defined? C              # => "constant"
  p defined? A::C           # => "constant"
  puts

  p A.const_defined? :B     # => true
  p const_defined? :B       # => true
  puts

  p A.const_defined? :C     # => true
  p const_defined? :C       # => true
  puts
end

p defined? AA::B            # => "constant"
p defined? AA::C            # => "constant"
puts

p AA.const_defined? :B      # => true
p AA.const_defined? :C      # => true

puts
puts "done #{__FILE__}"
