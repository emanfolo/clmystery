# Write a program that adds together all the integers from `1` to
# `250` (inclusive) and `puts`es the total.

n = 0
i = 0
while i <= 250 do
  n = i + n
  i = i + 1
end
puts n.to_i

