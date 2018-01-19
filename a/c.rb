puts "context #{__FILE__}: before A::C defined: defined? A::C"
p defined? A::C

class A
  puts "context #{self.name}: before D defined: defined? D"
  p defined? D

  autoload :D, "a/d"

  puts "context #{self.name}: after D defined: defined? D"
  p defined? D

  puts "context #{self.name}: before C set"
  C = 1

  puts "context #{self.name}: before D mentioned"
  puts "context #{self.name}: p D"
  p D

  puts "context #{self.name}: after C set: defined? C"
  defined? C
end

puts "---- context #{__FILE__}: finished ----"
