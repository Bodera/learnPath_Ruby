=begin
A V E R A G E   1
Read two floating points' values of double precision A and B, corresponding to two student's grades. After this, calculate the student's average, considering that grade A has weight 3.5 and B has weight 7.5. Each grade can be from zero to ten, always with one digit after the decimal point. Don’t forget to print the end of line after the result, otherwise you will receive “Presentation Error”. Don’t forget the space before and after the equal sign.

Input:
The input file contains 2 floating points' values with one digit after the decimal point.
0.0 7.1

Output:
Print MEDIA(average in Portuguese) according to the following example, with 5 digits after the decimal point and with a blank space before and after the equal signal.
MEDIA = 4.84091

Tested according to: https://udebug.com/URI/1005
=end

 #Vamos agora criar a função que faz a soma simples.
    def firstAvg(w,s)
        #somando as variáveis.
        peso1 = 3.5
        peso2 = 7.5
        avg = (((peso1*w)+(peso2*s))/(peso1+peso2)).to_f
        #Exibir o resultado.
        puts "MEDIA = #{'%.5f' % avg}\n"
    end

#coletando variáveis e passando para a função.
w = gets.chomp.to_f
s = gets.chomp.to_f

firstAvg(w,s)
