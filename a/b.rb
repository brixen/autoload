puts "context #{__FILE__}: before A::B defined: defined? A::B"
p defined? A::B

puts "context #{__FILE__}: before A::B defined: defined? A::C"
p defined? A::C

puts "context #{__FILE__}: before A::B defined: defined? A::D"
p defined? A::D

class A
  puts "context #{__FILE__}, #{self.name}: before B defined: defined? B"
  p defined? B

  B = 1
end

puts "---- context #{__FILE__}: finished ----"
