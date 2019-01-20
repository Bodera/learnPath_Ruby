=begin
URI 1002 Area of a Circle.

The formula to calculate the area of a circumference is defined as A = π . R2. Considering to this problem that π = 3.14159:

Calculate the area using the formula given in the problem description.

Input:
The input contains a value of floating point (double precision), that is the variable R.


Output:
Present the message "A=" followed by the value of the variable, as in the example bellow, with four places after the decimal point. Use all double precision variables. Like all the problems, don't forget to print the end of line after the result, otherwise you will receive "Presentation Error".


=end

class Uri
       #Veja como se define uma constante em Ruby e tente identificar qual a diferença de sintaxe comparado a declaração de variáveis.
        Pi = 3.14159

    #Vamos agora criar uma função que irá calcurar a circunferência para nós.
    def calculateCircumference()
        
        #Variável local em que o input corresponde ao raio.
        r = gets.chomp
    
        #Convertendo a string do dado entrada para ponto flutuante.
        r = 2**r.to_f
    
        #Fórmula da especialidade da classe.
        #r = r ** 2
        a = r * Pi
        
        #Exibir o resultado.
        puts "A = #{a}"
        puts ""
    end
end

object = Uri. new 
object.calculateCircumference
