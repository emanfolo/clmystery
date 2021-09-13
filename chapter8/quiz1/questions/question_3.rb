# Write a program that groups people based on their favourite
# things. In should:
# * Ask the user to input a category - `sport` or `fruit`.
# * Put the `people` into groups where each group has people who share
#   the same favourite thing.
# * Print out the names of the people in each group.  Before each
#   group, it should say which favourite thing the people in the group
#   share.
#
# * Example output:
#   ```
#   Enter category to group people by
#   sport
#   squash
#   Mary
#   Lauren
#   Govind
#   weightlifting
#   Isla
#   Awad
#   cycling
#   Sam
#   Will
#   ```
#
# Note: You can assume that, when asked for a category, the user will
# only enter either `sport` or `fruit`.

people = [
  { "name" => "Mary", "sport" => "squash", "fruit" => "blackberry" },
  { "name" => "Lauren", "sport" => "squash", "fruit" => "orange" },
  { "name" => "Isla", "sport" => "weightlifting", "fruit" => "banana" },
  { "name" => "Sam", "sport" => "cycling", "fruit" => "orange" },
  { "name" => "Govind", "sport" => "squash", "fruit" => "banana" },
  { "name" => "Awad", "sport" => "weightlifting", "fruit" => "kiwi" },
  { "name" => "Will", "sport" => "cycling", "fruit" => "blackberry" }
]

by_sport = {}
by_fruit = {}
counter = 0

people.each do
  n = people[counter]["name"]
  s = people[counter]["sport"]
  f = people[counter]["fruit"]
  by_sport[n] = s
  by_fruit[n] = f
  counter += 1
end

answersport = by_sport.group_by(&:last).transform_values { |v| v.map(&:first) }

answerfruit = by_fruit.group_by(&:last).transform_values { |v| v.map(&:first) }

input = gets.chomp
if input == "sport"
  answersport.each do |k, v|
    puts k
    puts v
  end
elsif input == "fruit"
  answerfruit.each do |k, v|
    puts k 
    puts v
  end
end 

