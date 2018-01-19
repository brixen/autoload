puts "context #{__FILE__}: before A::D defined: defined? A::C"
p defined? A::C
puts "context #{__FILE__}: before A::D defined: defined? A::D"
p defined? A::D

class A
  puts "context #{__FILE__}, #{self.name}: before D defined: defined? C"
  p defined? C
  puts "context #{__FILE__}, #{self.name}: before D defined: defined? D"
  p defined? D

  D = 2

  puts "context #{__FILE__}, #{self.name}: after D defined: defined? C"
  p defined? C
  puts "context #{__FILE__}, #{self.name}: after D defined: defined? D"
  p defined? D
end

puts "---- context #{__FILE__}: finished ----"
