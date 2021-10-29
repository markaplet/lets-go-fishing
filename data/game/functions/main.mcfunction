## Game state 0
# Defaults to game state 0 or not running 
# Welcome users when joining
# Allow users to set difficulty level
# Set game state to 1 when starting match

## Players on connection
# New and returning players will be reinitialized and see the title screen.
execute as @a[scores={left_game=1}] run scoreboard players set @s connection 1
scoreboard players set @a[tag=!initialized] connection 1
execute as @a[scores={connection=0..}] run function game:misc/connection


## Game State 1 - Reset Team Scores
execute if score dummy GameState matches 1 run function game:gamestate/reset

## Game State 2 Starts countdown
execute if score dummy GameState matches 2 run function game:gamestate/countdown
# Starts countdown
# Displays countdown in title
# Sets game state to 3

## Game state 3 - Clear and reset scores and play area
execute if score dummy GameState matches 3 run function game:gamestate/pregame
# Reset scoreboards
# summon sheep based on difficulty level
# set game state to 4

## Game State 4 - Running
execute if score dummy GameState matches 4 run function game:gamestate/running
# Join teams
# add scores when caught
# Teleport caught sheep into the void
# Set game state to 5

## Players join team based on blocks they stand on
## Players choose team by fishing from 1 of 4 designated areas.
execute as @a at @s if block ~ ~-1 ~ minecraft:purple_wool run team join purple @s
execute as @a at @s if block ~ ~-1 ~ minecraft:red_wool run team join red @s
execute as @a at @s if block ~ ~-1 ~ minecraft:lime_wool run team join green @s
execute as @a at @s if block ~ ~-1 ~ minecraft:yellow_wool run team join gold @s

## Game state 4
execute if score dummy GameState matches 5 run function game:gamestate/winner
# Calculate scores
# /scoreboard players operation #whoWon scores > @e[tag=score] scores
# /scoreboard players operation @e[tag=score] scores -= #whoWon scores
# announce winning team


## Game State 99 is for placing conveyors
execute if score dummy GameState matches 99 run function game:misc/utility_conveyor