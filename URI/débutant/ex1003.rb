=begin
S I M P L E   S U M
Read two integer values, in this case, the variables A and B. After this, calculate the sum between them and assign it to the variable SOMA. Write the value of this variable.

Input:
The input file contains 2 integer numbers.
-30 10

Output:
Print the variable SOMA with all the capital letters, with a blank space before and after the equal signal followed by the corresponding value to the sum of A and B. Like all the problems, don't forget to print the end of line, otherwise you will receive "Presentation Error"
SOMA = -20

Tested according to: https://udebug.com/URI/1003
=end
 #Vamos agora criar a função que faz a soma simples.
    def simpleSum(t,h)
        #somando as variáveis.
        soma = (t+h).to_i
        #Exibir o resultado.
        puts "SOMA = #{soma}\n"
    end

#coletando variáveis e passando para a função.
t = gets.chomp.to_i
h = gets.chomp.to_i
simpleSum(t,h)
