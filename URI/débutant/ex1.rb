=begin 
URI 1001 Extremely Basic.
Read 2 variables, named A and B and make the sum of these two variables, assigning its result to the variable X. 
Print X as shown below. Print endline after the result otherwise you will get “Presentation Error”. 

Input
The input file will contain 2 integer numbers. 
10
9 

Output
Print the letter X (uppercase) with a blank space before and after the equal
 signal followed by the value of X, according to the following example.
 X = 19  

=end


#The following two lines of code gets the console input .
#Attention for that method not checks for the data type inputed.
A = gets.chomp
B = gets.chomp

#But in variable c which stores the result we convert the input as a interger value.
#Now makes sense apply the sum between A and B.
X = A.to_i + B.to_i

#Notice that the variables have been seted now as intergers. 
#Try input a string to see what happens.
#Tip: once using double quotes Ruby allows you to perform string interpolation.
puts "X = #{X}"
