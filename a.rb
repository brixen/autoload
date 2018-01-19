$: << __dir__

puts "in #{__FILE__}"

p defined? A::B             # => nil
p defined? A::C             # => nil
puts

class A
  autoload :B, 'a/b'
  autoload :C, 'a/c'
  autoload :E, 'a/e'

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
puts "triggering autoload: A::B"
p A::B

puts
puts "running require 'c'"
require "c"

puts
puts "running require 'a/e'"
require "a/e"

puts
puts "done #{__FILE__}"
