$: << __dir__

puts "context #{File.expand_path __FILE__}: before autoload A::B defined: defined? A::B"
p defined? A::B

class A
  puts "context #{File.expand_path __FILE__}, #{self.name}: before autoload B defined: defined? B"
  p defined? B

  autoload :B, "a/b"

  puts "context #{File.expand_path __FILE__}, #{self.name}: after autoload B defined: defined? B"
  p defined? B

  autoload :C, "a/c"
end

puts "context #{File.expand_path __FILE__}: after autoload A::B defined: defined? A::B"
p defined? A::B

puts "context #{File.expand_path __FILE__}: after autoload A::C defined: defined? A::C"
p defined? A::C

puts "contetx #{File.expand_path __FILE__}: require triggering autoload triggering autoload"
require "./c"

puts "context #{File.expand_path __FILE__}: autoload triggering require triggering autoload: defined? A::B"
puts "context #{File.expand_path __FILE__}: p A::B"
p A::B
