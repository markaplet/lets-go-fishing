
## Game State 99 is for placing conveyors
execute if score dummy GameState matches 99 run function game:utility_conveyor


## Game state 0
# Defaults to game state 0 or not running 
# Welcome users when joining
# Allow users to set difficulty level
# Set game state to 1

## Game State 1 Starts countdown
execute if score dummy GameState matches 1 run function game:countdown
# Starts countdown
# Displays countdown in title
# Sets game state to 2


## Game state 2 - Clear and reset scores and play area
execute if score dummy GameState matches 2 run function game:reset-scores
# Reset scoreboards
# summon sheep based on difficulty level
# set game state to 3

## Game State 3 - Running
execute if score dummy GameState matches 3 run function game:match-running
# teleport sheep in a circle
# add scores when caught
# Teleport caught sheep into the void
# Set game state to 4

## Game state 4
# Calculate scores
# /scoreboard players operation #whoWon scores > @e[tag=score] scores
# /scoreboard players operation @e[tag=score] scores -= #whoWon scores
# announce winning team