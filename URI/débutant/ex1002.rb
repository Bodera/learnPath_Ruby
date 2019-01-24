=begin
URI 1002 Area of a Circle.

The formula to calculate the area of a circumference is defined as A = π . R2. Considering to this problem that π = 3.14159:

Calculate the area using the formula given in the problem description.

Input:
The input contains a value of floating point (double precision), that is the variable R.


Output:
Present the message "A=" followed by the value of the variable, as in the example bellow, with four places after the decimal point. Use all double precision variables. Like all the problems, don't forget to print the end of line after the result, otherwise you will receive "Presentation Error".

=end
    #Vamos agora criar uma função que irá calcurar a circunferência para nós.
    def calculateCircumference(r)
        pi = 3.14159
        #r ao quadrado é o mesmo que r é igual r * r.
        r *= r
        a = (r*pi).to_f
        #Exibir o resultado.
        puts "A=#{'%.4f' % a}\n"
    end

#Variável local em que o input corresponde ao raio.
r = gets.chomp.to_f

calculateCircumference(r)
