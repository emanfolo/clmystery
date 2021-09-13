# Write a program that lists the names of people who all like a
# specific thing. It should:
# * Ask the user to input a category - `sport` or `fruit`.
# * Ask the user to input a category value e.g. `kiwi`.
# * `puts` the names of each of the people who like the thing in the
#   category, one per line.
#
# * Example output:
#   ```
#   Enter what category to search
#   sport
#   Enter what value to search for
#   squash
#   Mary
#   Lauren
#   Govind
#   ```
#
# Note: You can assume that, when asked for a category, the user will
# only enter either `sport` or `fruit`.  The user might enter a
# category value that no person has (e.g. `mango`).

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
  sp = gets.chomp
  if by_sport.has_value?(sp)
    puts answersport[sp]
  end
elsif input == "fruit"
  sp = gets.chomp
  if by_fruit.has_value?(sp)
    puts answerfruit[sp]
  end
end
