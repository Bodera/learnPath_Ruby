#L'algorithme fizz buzz
#can be a predefined array or an user input
number = [1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25]

for num in number 
    # Check if the array number is divisible for 3 and 5.
    # if num % 3 == 0 && num % 5 == 0
    if num % 15 == 0
        puts "fizz buzz"
    elsif num % 5 == 0
        puts "buzz"
    elsif num % 3 == 0
        puts "fizz"
    else
        puts num
    end
end