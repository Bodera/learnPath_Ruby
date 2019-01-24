=begin
S I M P L E   P R O D U C T
Read two integer values. After this, calculate the product between them and store the result in a variable named PROD. Print the result like the example below. Do not forget to print the end of line after the result, otherwise you will receive “Presentation Error”.

Input:
The input file contains 2 integer numbers.
-30 10

Output:
Print PROD according to the following example, with a blank space before and after the equal signal.
PROD = -300

Tested according to: https://udebug.com/URI/1004
=end
 #Vamos agora criar a função que faz a soma simples.
    def simpleProduct(r,g)
        #somando as variáveis.
        prod = (r*g).to_i
        #Exibir o resultado.
        puts "PROD = #{prod}\n"
    end

#coletando variáveis e passando para a função.
r = gets.chomp.to_i
g = gets.chomp.to_i

simpleProduct(r,g)
