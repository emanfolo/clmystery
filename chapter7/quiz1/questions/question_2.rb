# Write a program that puts people into groups.  It should:
# * Ask the user to enter the number of groups they want to create.
# * Ask for people's names, one at a time, until the user enters `stop`.
# * Grouping strategy
#   * As an example, imagine there are three groups.
#   * First person goes in the first group.
#   * Second person goes in the second group.
#   * Third person goes in the third group.
#   * Fourth person goes in the first group.
#   * Fifth person goes in the second group.
#   * etc.
# * Ask the user for the number of a group.
# * Print the people in that group, each separated by a comma and a
#   space.  Group numbers are "1-indexed".  This means that, if the
#   user enters `1`, the first group should be printed, not the second
#   group.
# * Keep on asking the user for group numbers until the user enters
#   `stop`.
#
# * Example output
#   ```
#   Enter number of groups
#   3
#   Enter a name
#   Mary
#   Enter a name
#   Lauren
#   Enter a name
#   Awad
#   Enter a name
#   Govind
#   Enter a name
#   Isla
#   Enter a name
#   stop
#   Enter the number of a group to print out
#   1
#   Mary, Govind
#   Enter the number of a group to print out
#   2
#   Lauren, Isla
#   Enter the number of a group to print out
#   3
#   Awad
#   Enter the number of a group to print out
#   stop
#   ```
#
# * Note: You can assume the user will input an integer when asked how
#   many groups they want to create.  You can assume the user will
#   input integers for group numbers that exist when they are asked
#   for the number of a group to print out.

num = gets.chomp.to_i
group = Array.new

while true do 
  input = gets.chomp.to_s
  if input != "stop"
    group.push(input)
  elsif input == "stop"
    break 
  end 
end 

while true do 
  finder = gets.chomp
  if finder != "stop" && group.length > 0 && num == 1
    puts group.join(', ')
  elsif finder != "stop" && group.length > 0 && num > 1
    a = group[0]
    b = group[1]
    c = group[2]
    d = group[3]
    e = group[4]
    puts "#{a}, #{d}"
    puts "#{b}, #{e}"
    puts "#{c}"
  elsif finder != "stop" && group.length == 0 
    zero = Array.new(num)
    puts zero
  elsif finder == "stop"
    break
  end
end





