=begin
S A L A R Y
Write a program that reads an employee's number, his/her worked hours number in a month and the amount he received per hour. Print the employee's number and salary that he/she will receive at end of the month, with two decimal places.

Don’t forget to print the line's end after the result, otherwise you will receive “Presentation Error”.
Don’t forget the space before and after the equal signal and after the U$.

Input:
The input file contains 2 integer numbers and 1 value of floating point, representing the number, worked hours amount and the amount the employee receives per worked hour.
1 200 20.50

Output:
Print the number and the employee's salary, according to the given example, with a blank space before and after the equal signal.
NUMBER = 1
SALARY = U$ 4100.00
=end
#Vamos agora criar a função que faz a soma simples.
    def solveSalary(id, hours, amount)
        #somando as variáveis.
        total = (hours*amount).to_f
        #Exibir o resultado.
        puts "NUMBER = #{id}"
        puts "SALARY = U$ #{'%.2f' % total}\n"
    end

#coletando variáveis e passando para a função.
id = gets.chomp.to_i
hours = gets.chomp.to_i
amount = gets.chomp.to_f
        
solveSalary(id, hours, amount)
