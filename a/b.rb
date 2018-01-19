puts
puts "---- context #{__FILE__}: start ----"
puts

puts "context #{__FILE__}: before A::B defined: defined? A::B"
p defined? A::B

puts "context #{__FILE__}: before A::B defined: defined? A::C"
p defined? A::C

puts "context #{__FILE__}: before A::B defined: defined? A::D"
p defined? A::D

class A
  puts "context #{__FILE__}, #{self.name}: before B defined: defined? B"
  p defined? B

  puts "context #{__FILE__}, #{self.name}: before B defined: defined? A::B"
  p defined? A::B

  puts "context #{__FILE__}, #{self.name}: before require 'd': defined? E"
  p defined? E

  puts "context #{__FILE__}, #{self.name}: before require 'd': defined? A::E"
  p defined? A::E

  puts "context #{__FILE__}, #{self.name}: require 'd'"
  require 'd'

  puts "context #{__FILE__}, #{self.name}: after require 'd': defined? E"
  p defined? E

  puts "context #{__FILE__}, #{self.name}: after require 'd': defined? A::E"
  p defined? A::E

  puts "context #{__FILE__}, #{self.name}: B = 1"
  B = 1

  puts "context #{__FILE__}, #{self.name}: after B defined: defined? B"
  p defined? B

  puts "context #{__FILE__}, #{self.name}: after B defined: defined? A::B"
  p defined? A::B
end

puts "context #{__FILE__}: after B defined: defined? A::B"
p defined? A::B

puts
puts "---- context #{__FILE__}: finished ----"
puts
