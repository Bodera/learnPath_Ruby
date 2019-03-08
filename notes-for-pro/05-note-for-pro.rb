#!/usr/bin/env ruby
#Let's study now how to do casting, casting means type conversion


#Floating point numbers
#from string to float
puts "123.50".to_f
#check if the value is no more a string
print 'É ponto flutuante? ' 
puts ("123.50".to_f).instance_of? Float
#code below it is correct to 
puts Float("123.40")
#the code below returns a error because, well there is nothing to cast in it
##puts "avada-kedavra".to_f  ##Output: 0.0
##Float("avada-kedavra")  ##Output: ArgumentError: invalid value for Float(): "avada-kedavra"


##Strings
puts 123.50.to_s
print "É uma string? "
puts (123.50.to_s).instance_of? String

# another valid method
puts String(123.50)

# now look at this
#(?)sprintf("%s", 1232.50)
puts "%s" % 123.50  ##Output: "123.50"
puts "%d" % 123.50  ##Output: 123
puts "%.3f" % 123.50  ##Output: 123.500


#Integers
puts Integer("998")  ##Output: 998
#don't try to convert float number for not receiving the output bellow
##puts Integer("13.40")  ##Output: `Integer': invalid value for Integer(): "13.40" (ArgumentError)
#A string will take the value of any integer at its start, but will not take integers from anywhere else:
puts "124-arroba".to_i  ##Output: 124
puts "arroba-124".to_i  ##Output: 0
#but the line below will outputs an error
puts "arroba".to_i  ##Output: 0
##Integer("arroba")  ##Output: ArgumentError: invalid value for Integer(): "arroba"


#Mixing Float whith Integers
#We assume that the division of two integers results in another integer
puts 1/2 ##Output: 0
#For archieve a floating point result you can perform one of the following
puts 1.0/2  ##Output: 0.5
puts 1.to_f/2  ##Output: 0.5
puts 1/Float(2)  ##Output: 0.5
#Alternatively, fdiv may be used to return the floating point result of division without explicitly casting either
puts 1.fdiv 2  ##Output: 0.5
