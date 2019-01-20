print "Give me a number: "
number = gets.chomp.to_i

bigger = number * 100
puts "A bigger number ir #{bigger}."

print "Give me another number: "
another = gets.chomp
number = another.to_i

smaller = number / 100
puts "A smaller number is #{smaller}."

print "How much do you wanna transfer for your account? "
money = gets.chomp.to_f

money *= 0.1
puts "Okay, but the taxes will cost to you #{money} bucks."
