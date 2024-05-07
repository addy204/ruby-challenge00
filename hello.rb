# author: Aditya Sharma
# course: Agile Full Stack Web Development
# challenge: 00
# version: 1.0
# discription: ruby challenge 00 where we have to recive a user input and calculated the grand total
# amount including taxes

# Store the GST rate and PST rate in constants.
GST_TAX_RATE = 0.05
PST_TAX_RATE = 0.07

# Asks user to input a subtotal of a dollar amount
# gets.chomp reads the input from the user
# to_f id used to convert the users entered sting into a float number
print "Enter the subtotal: "
sub_total = gets.chomp.to_f

# here the pst and gst rates are calculated for the subtotal
pst_rate = sub_total * PST_TAX_RATE
gst_rate = sub_total * GST_TAX_RATE

# the total amout is calculate here by adding the subtotal, gst, and pst
# amount together.
# Calculate and store the after tax amount in a variable called "grand_total".
grand_total = sub_total + pst_rate + gst_rate

# here we print out the subtotal from the user
# the amount of pst and gst and the percentage
# and the grandtotal of the 3 values added together
# the '%.2f' % this is a string interpilator converts a varuable to a
# floating point with 2 decimal places
# the .to_i converts the calculated tax percentage to an integer
puts "Subtotal: $#{'%.2f' % sub_total}"
puts "PST: $#{'%.2f' % pst_rate} - #{(PST_TAX_RATE * 100).to_i}%"
puts "GST: $#{'%.2f' % gst_rate} - #{(GST_TAX_RATE * 100).to_i}%"
puts "Grand Total: $#{'%.2f' % grand_total}"

# here we utilize if statements to print a certain sentence related to
# the price range of the grand total.
if grand_total <= 5.00
  puts "Pocket Change"
elsif grand_total > 5.00 && grand_total < 20
puts "Wallet Time"
elsif grand_total >= 20
  puts "Charge It"
end
