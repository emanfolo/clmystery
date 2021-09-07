# Write a program that:
# * Calculates the first 20 Fibonacci numbers.
#   * The first Fibonacci number is 0.
#   * The second Fibonacci number is 1.
#   * Every Fibonacci number after that is calculated by adding the
#     previous two Fibonacci numbers together e.g. the third Fibonacci
#     number is the result of `0 + 1`.
# * `puts`es these numbers, one per line.

first = 0
second = 1
nth = 0
c = 0
while (c < 21)
  if (c == 0)
    puts c 
  elsif (c <= 1)
    nth = c
  else
    puts nth
    nth = first + second
    first = second
    second = nth
  end
  c = c + 1
end 