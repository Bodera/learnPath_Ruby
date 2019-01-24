=begin
A V E R A G E   2
Read three values (variables A, B and C), which are the three student's grades. Then, calculate the average, considering that grade A has weight 2, grade B has weight 3 and the grade C has weight 5. Consider that each grade can go from 0 to 10.0, always with one decimal place.

Input:
The input file contains 3 values of floating points with one digit after the decimal point.
10.0 10.0 5.0

Output:
Print MEDIA(average in Portuguese) according to the following example, with a blank space before and after the equal signal.
MEDIA = 7.5

Tested according to: https://udebug.com/URI/1006
=end

 #Vamos agora criar a função que faz a soma simples.
    def otherAvg(q,w,e)
        #somando as variáveis.
        peso1 = 2.0
        peso2 = 3.0
        peso3 = 5.0
        avg = (((peso1*q)+(peso2*w)+(peso3*e))/(peso1+peso2+peso3)).to_f
        #Exibir o resultado.
        puts "MEDIA = #{avg.round(1)}\n"
    end

#coletando variáveis e passando para a função.
q = gets.chomp.to_f
w = gets.chomp.to_f
e = gets.chomp.to_f
        
otherAvg(q,w,e)
