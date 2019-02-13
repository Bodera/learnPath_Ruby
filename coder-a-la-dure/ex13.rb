=begin
Pay attention! You have been running ruby scripts without command line arguments. If you type only ruby ex13.rb you are doing it wrong! Pay close attention to how I run it. This applies any time you see ARGV being used.
=end

first, second, third = ARGV

puts "Your first variable is: #{first}."
puts "Your second variable is: #{second}."
puts "Your third variable is: #{third}."