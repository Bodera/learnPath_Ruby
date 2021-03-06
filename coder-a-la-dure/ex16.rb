# this program emulates a simple text editor.
# >ruby ex16.rb File
filename =  ARGV.first 

puts "We're going to erase #{filename}"
puts "If you don't want that, hit CTRL+C (press in the given order)."
puts "If you do want that, hit RETURN."

# standart input and gets function
$stdin.gets

puts "Opening the file..."
target = open(filename, 'w') # w stands for -write.

puts "Truncating the file. Goodbye!"
target.truncate(0)

puts "Now I'm going to ask you for three lines."

lines = []
count=0

until count == 3
    #string interpolation
    print "line #{count + 1}:"
    input = $stdin.gets.chomp
    lines.push input
    count+=1
end


puts "I'm going to write these to the file."

count=0
until count == 3
    target.write(lines[count] + "\n")
    count+=1
end

puts "And finally, we close it."
target.close
# >cat File
=begin
    
a.If you do not understand this, go back through and use the comment trick to get it squared away in your mind. One simple English comment above each line will help you understand or at least let you know what you need to research more.
    
b.Write a script similar to the last exercise that uses read and argv to read the file you just created.
    
c.There's too much repetition in this file. Use strings, formats, and escapes to print out line1, line2, and line3 with just one target.write() command instead of six.
    
d.Find out why we had to pass a 'w' as an extra parameter to open. Hint: open tries to be safe by making you explicitly say you want to write a file.
    
e.If you open the file with 'w' mode, then do you really need the target.truncate()? Read the documentation for Ruby's open function and see if that's true.

=end
