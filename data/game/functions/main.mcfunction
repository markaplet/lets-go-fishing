## Players on connection
# New and returning players will be reinitialized and see the title screen.
execute as @a[scores={left_game=1}] run scoreboard players set @s connection 1
scoreboard players set @a[tag=!initialized] connection 1
execute as @a[scores={connection=0..}] run function game:misc/connection

## Game State 1 - Reset Team Scores
execute if score dummy GameState matches 1 run function game:gamestate/reset

## Game State 2 Starts countdown
execute if score dummy GameState matches 2 run function game:gamestate/countdown

## Game state 3 - Clear and reset scores and play area
execute if score dummy GameState matches 3 run function game:gamestate/pregame

## Game State 4 - Running
execute if score dummy GameState matches 4 run function game:gamestate/running

## Players join team based on blocks they stand on
## Players choose team by fishing from 1 of 4 designated areas.
execute as @a at @s if block ~ ~-1 ~ minecraft:purple_wool run team join purple @s
execute as @a at @s if block ~ ~-1 ~ minecraft:red_wool run team join red @s
execute as @a at @s if block ~ ~-1 ~ minecraft:lime_wool run team join green @s
execute as @a at @s if block ~ ~-1 ~ minecraft:yellow_wool run team join gold @s

## Game state 4
execute if score dummy GameState matches 5 run function game:gamestate/winner

## Game State 99 is for placing conveyors
execute if score dummy GameState matches 99 run function game:misc/utility_conveyor