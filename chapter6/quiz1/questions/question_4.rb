# Write an adventure game that the player plays from the command line
# by typing in commands like `look`, `north` etc.  They can move
# between rooms, look at things and interact with objects.  The game
# should have this behaviour:
# * Two rooms: hall and study.
# * The player starts in the hall.

#
# * Note: To stop the program (e.g. when the user types `quit` or when
#   they win the game), don't use `exit` to quit the program because
#   this will break the automated tests.  To exit a while loop early,
#   use the `break` keyword.
#
# * Note: When you run the automated tests, the tests will simulate
#   the user input.  You shouldn't need to enter any input manually.
#   If the tests hang when you run them, it probably means your code
#   doesn't work correctly, yet.
# 
# * Note: To pass the tests, you'll need to `puts` exactly what's
#   expected. Watch out for stray punctuation, capital letters, etc.

# * General commands (can be run at any time).
#   * `quit`: `puts`es `Bye!` and the program stops executing.
#   * (command incorrect for situation): nothing happens, nothing is
#                                        `puts`ed.
# * Room-specific commands
#   * Hall
#     * `look`: `puts`es `You are standing in a hall with a marble
#               floor. You see a door.`
#     * `north`: Move to the study.
#   * Study:
#     * `look`: `puts`es `You are in a warm and cosy study. You see a
#               safe. You see a desk.`
#     * `look at desk`: `puts`es `You see a piece of paper that reads,
#                       The combination is 2451.`
#     * `south`: Move to the hall.
#     * `enter combination 2451`: `puts`es `You see some diamonds in
#                                 the safe, pick them up and make your
#                                 escape` and the program stops
#                                 executing.

# Hall = position : 0
# Study = position : 1

position = 0

while true 
  input = gets.chomp
  if input == "quit"
    puts "Bye!"
    break
  elsif input == "2451" && position == 1
    puts "You see some diamonds in the safe, pick them up and make your escape"
    break 
  elsif input == "look" && position == 0
    puts "You are standing in a hall with a marble floor. You see a door."
  elsif input == "north" && position == 0
    position += 1
  elsif input == "look" && position == 1 
    puts "You are in a warm and cosy study. You see a safe. You see a desk."
  elsif input == "look at desk" && position == 1
    puts "You see a piece of paper that reads, The combination is 2451."
  elsif input == "south"
    position -= 1
  end
end 