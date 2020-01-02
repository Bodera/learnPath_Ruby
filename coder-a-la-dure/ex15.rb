filename = ARGV.first 

test = open(filename)

puts "Here's your file #{filename}:"
print test.read

print "\nType the filename again: "
file_again = $stdin.gets.chomp

test_again = open(file_again)
puts "Here's your file #{file_again}:"
print test_again.read

test.close
test_again.close
