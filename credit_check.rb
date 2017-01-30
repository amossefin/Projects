#Project to create the Luhn Algorithm
#
require 'pry'

print "Enter card number:"
card_number = gets.chomp
valid = false
#
even_numbers = [card_number[1].to_i, card_number[3].to_i, card_number[5].to_i, card_number[7].to_i, card_number[9].to_i, card_number[11].to_i, card_number[13].to_i]
odd_numbers = [card_number[0].to_i, card_number[2].to_i, card_number[4].to_i, card_number[6].to_i, card_number[8].to_i, card_number[10].to_i, card_number[12].to_i, card_number[14].to_i]
last_number = card_number[15].to_i
double_numbers = []
new_numbers = []
sum_numbers = 0

# Your Luhn Algorithm Here
odd_numbers.each do |number|
    double_numbers << (number * 2)
end

double_numbers.each do |number|
     sum_numbers = number.to_s.split("")
     sum = 0
        sum_numbers.each do |number|
            sum += number.to_i
        end
    new_numbers << sum
end

final_numbers = new_numbers + even_numbers

sum_2 = 0

final_numbers.each do |number|
    sum_2 += number
end 

digit = (sum_2 * 9)

digit = digit.to_s

check_number = digit[-1].to_i

# Output
## If it is valid, print "The number is valid!"
if check_number == last_number
    puts "The number is valid!"
## If it is invalid, print "The number is invalid!"
else
    puts "The number is invalid!"
end

#binding.pry