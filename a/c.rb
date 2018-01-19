$: << __dir__

puts
puts "in #{__FILE__}"

p defined? A::B             # => "constant"
p defined? A::C             # => nil
puts

class A
  p defined? B              # => "constant"
  p defined? A::B           # => "constant"
  p defined? C              # => "constant"
  p defined? A::C           # => nil"
  puts

  p A.const_defined? :B     # => true
  p const_defined? :B       # => true
  puts

  p A.const_defined? :C     # => false
  p const_defined? :C       # => false
  puts
end

p defined? A::B             # => "constant"
p defined? A::C             # => nil"
puts

p A.const_defined? :B       # => true
p A.const_defined? :C       # => false
puts

class AA < A
  p defined? B              # => "constant"
  p defined? A::B           # => "constant"
  p defined? C              # => nil
  p defined? A::C           # => nil
  puts

  p A.const_defined? :B     # => true
  p const_defined? :B       # => true
  puts

  p A.const_defined? :C     # => false
  p const_defined? :C       # => false
  puts
end

p defined? AA::B            # => "constant"
p defined? AA::C            # => nil
puts

p AA.const_defined? :B      # => true
p AA.const_defined? :C      # => false

class A
  puts
  puts "defining C = 2"
  puts
  C = 2
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
