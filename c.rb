puts
puts "---- context #{__FILE__}: start ----"
puts

puts "context: #{__FILE__}: before mentioning A::C, defined? A::B"
p defined? A::B

puts "context: #{__FILE__}: before mentioning A::C, defined? A::C"
p defined? A::C

puts "context: #{__FILE__}: p A::C"
p A::C

puts "context: #{__FILE__}: after mentioning A::C, defined? A::B"
p defined? A::B

puts "context: #{__FILE__}: after mentioning A::C, defined? A::C"
p defined? A::C

class A
  puts "context: #{__FILE__}, #{self.name}: defined? B"
  p defined? B

  puts "context: #{__FILE__}, #{self.name}: defined? A::B"
  p defined? A::B

  puts "context: #{__FILE__}, #{self.name}: defined? C"
  p defined? C

  puts "context: #{__FILE__}, #{self.name}: defined? A::C"
  p defined? A::C

  puts "context: #{__FILE__}, #{self.name}: defined? D"
  p defined? D

  puts "context: #{__FILE__}, #{self.name}: defined? A::D"
  p defined? A::D
end

puts
puts "---- context #{__FILE__}: finished ----"
puts
