#1) Establish numbers in array
card_number = "342804633855673"
new_cc = card_number.split(//).reverse

card_number = new_cc.map do |num|
  num.to_i
end

#2) Use index to identify numbers that will need to be manipulated
#Account identifier:    7   9   9   2   7   3   9   8   7   1   3
#3) Define method for 1st calculation which is 2s every other digit from right to left
#2x every other digit:  7   18  9   4   7   6   9   16  7   2   3
#

new_cc = Array.new
card_number.each_with_index do |num, index|
  if index.odd?
    new_cc << num * 2
  else
    new_cc << num
  end
end

#4) Define calculation method for adding digits of numbers over 10
#Summed digits over 10: 7   9   9   4   7   6   9   7   7   2   3

summed = Array.new
new_cc.each do |num|
  if num > 9
    double_digits = num.to_s.split(//)
    sum = double_digits[0].to_i + double_digits[1].to_i
    summed << sum
  else
    summed << num
  end
end

sum = 0
summed.each do |num|
  sum = sum + num
end

p sum

sum % 10 == 0
  if sum % 10 == 0
    puts "Your credit card is verified"
  else
    puts "Your credit card is not verified"
  end
#5) Add the numbers together and see if the answer is evenly divisible by 10
#Results summed:        7   9   9   4   7   6   9   7   7   2   3 = 70







#5) Add the numbers together and see if the answer is evenly divisible by 10
#Results summed:        7   9   9   4   7   6   9   7   7   2   3 = 70
