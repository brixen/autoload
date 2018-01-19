puts
puts "---- context #{__FILE__}: start ----"
puts

puts "context: #{__FILE__}: before mentioning A::E, defined? A::B"
p defined? A::B

puts "context: #{__FILE__}: before mentioning A::E, defined? A::E"
p defined? A::E

class A
  puts "context #{__FILE__}, #{self.name}: before mentioning A::E, defined? E"
  p defined? E

  puts "context #{__FILE__}, #{self.name}: before mentioning A::E, defined? A::E"
  p defined? A::E
end

puts "context: #{__FILE__}: p A::E"
p A::E

puts "context: #{__FILE__}: after mentioning A::E, defined? A::B"
p defined? A::B

puts "context: #{__FILE__}: after mentioning A::E, defined? A::E"
p defined? A::E

class A
  puts "context: #{__FILE__}, #{self.name}: defined? B"
  p defined? B

  puts "context: #{__FILE__}, #{self.name}: defined? A::B"
  p defined? A::B

  puts "context: #{__FILE__}, #{self.name}: defined? E"
  p defined? E

  puts "context: #{__FILE__}, #{self.name}: defined? A::E"
  p defined? A::E
end

puts
puts "---- context #{__FILE__}: finished ----"
puts
