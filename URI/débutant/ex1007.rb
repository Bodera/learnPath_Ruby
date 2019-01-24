=begin
D I F F E R E N C E
Read four integer values named A, B, C and D. Calculate and print the difference of product A and B by the product of C and D (A * B - C * D).

Input:
The input file contains 4 integer values.
0 0 7 8

Output:
Print DIFERENCA (DIFFERENCE in Portuguese) with all the capital letters, according to the following example, with a blank space before and after the equal signal.
DIFERENCA = -56

Tested according to: https://udebug.com/URI/1007
=end
 #Vamos agora criar a função que faz a soma simples.
    def difference(a,b,c,d)
        #somando as variáveis.
        productAB = (a*b).to_i
        productCD = (c*d).to_i
        diff = productAB - productCD
        #Exibir o resultado.
        puts "DIFERENCA = #{diff}\n"
    end

#coletando variáveis e passando para a função.
a = gets.chomp.to_i
b = gets.chomp.to_i
c = gets.chomp.to_i
d = gets.chomp.to_i
        
difference(a,b,c,d)
