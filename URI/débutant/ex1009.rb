=begin
S A L A R Y   W I T H   B O N U S
Make a program that reads a seller's name, his/her fixed salary and the sale's total made by himself/herself in the month (in money). Considering that this seller receives 15% over all products sold, write the final salary (total) of this seller at the end of the month , with two decimal places.

- Don’t forget to print the line's end after the result, otherwise you will receive “Presentation Error”.
- Don’t forget the blank spaces.

Input:
The input file contains a text (employee's first name), and two double precision values, that are the seller's salary and the total value sold by him/her.
MANGOJATA 1700.00 1230.50

Output:
Print the seller's total salary, according to the given example.
TOTAL = R$ 1884.58

=end

    def boostSalary(salary, selled)
        share = 0.15
        #somando as variáveis.
        total = (salary+(selled*share)).to_f
        #Exibir o resultado.
        puts "TOTAL = R$ #{'%.2f' % total}\n"
    end

#coletando variáveis e passando para a função.
name = gets.chomp
salary = gets.chomp.to_f
selled = gets.chomp.to_f

boostSalary(salary, selled)
