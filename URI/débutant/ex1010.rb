=begin
S I M P L E   C A L C U L A T E
In this problem, the task is to read a code of a product 1, the number of units of product 1, the price for one unit of product 1,
the code of a product 2, the number of units of product 2 and the price for one unit of product 2. 
After this, calculate and show the amount to be paid.

Input:
The input file contains two lines of data. In each line there will be 3 values: two integers and a floating value with 2 digits 
after the decimal point.
1 1 15.10
2 1 15.10

Output:
The output file must be a message like the following example where "Valor a pagar" means Value to Pay. Remember the space after ":" and after "R$" symbol. The value must be presented with 2 digits after the point.
VALOR A PAGAR: R$ 30.20

https://udebug.com/URI/1010
=end
ligne1 = gets.chomp
code1, unites1, prix1 = ligne1.split(" ")

ligne2 = gets.chomp
code2, unites2, prix2 = ligne2.split(" ")

resultat = ((unites1.to_i*prix1.to_f)+(unites2.to_i*prix2.to_f))
print "VALOR A PAGAR: R$ #{'%.2f' % resultat}\n"
