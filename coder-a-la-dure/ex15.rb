filename = ARGV.first 

teste = open(filename)

puts "Here's your file #{filename}:"
print teste.read

print "\nType the filename again: "
file_again = $stdin.gets.chomp

teste_again = open(file_again)

print teste_again.read

close(file_again)