puts
puts "---- context #{__FILE__}: start ----"
puts

puts "context #{__FILE__}: before A::D defined: defined? A::B"
p defined? A::B

puts "context #{__FILE__}: before A::D defined: defined? A::C"
p defined? A::C

puts "context #{__FILE__}: before A::D defined: defined? A::D"
p defined? A::D

class A
  puts "context #{__FILE__}, #{self.name}: before D defined: defined? B"
  p defined? B

  puts "context #{__FILE__}, #{self.name}: before D defined: defined? A::B"
  p defined? A::B

  puts "context #{__FILE__}, #{self.name}: before D defined: defined? C"
  p defined? C

  puts "context #{__FILE__}, #{self.name}: before D defined: defined? A::C"
  p defined? A::C

  puts "context #{__FILE__}, #{self.name}: before D defined: defined? D"
  p defined? D

  puts "context #{__FILE__}, #{self.name}: before D defined: defined? A::D"
  p defined? A::D

  puts "context #{__FILE__}, #{self.name}: D = 2"
  D = 2

  puts "context #{__FILE__}, #{self.name}: after D defined: defined? B"
  p defined? B

  puts "context #{__FILE__}, #{self.name}: after D defined: defined? A::B"
  p defined? A::B

  puts "context #{__FILE__}, #{self.name}: after D defined: defined? C"
  p defined? C

  puts "context #{__FILE__}, #{self.name}: after D defined: defined? A::C"
  p defined? A::C

  puts "context #{__FILE__}, #{self.name}: after D defined: defined? D"
  p defined? D

  puts "context #{__FILE__}, #{self.name}: after D defined: defined? A::D"
  p defined? A::D
end

puts
puts "---- context #{__FILE__}: finished ----"
puts
