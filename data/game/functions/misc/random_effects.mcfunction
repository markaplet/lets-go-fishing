# Note: Runs as timer loop to add effects to random

## Remove 1 from the effect timmer every tick.
scoreboard players remove effects_timer GameState 1

# Flying sheep get slow fall
effect give @e[tag=go_fish,nbt={OnGround:0b}] slow_falling 1 5 true

## Random effects to entities
execute if score effects_timer GameState matches 80 run execute as @e[limit=1,tag=go_fish,sort=random] at @s run tp ~ ~1 ~
execute if score effects_timer GameState matches 42 run execute as @e[limit=1,tag=go_fish,sort=random] at @s run tp ~ ~0.5 ~
execute if score effects_timer GameState matches 30 run execute as @e[limit=1,tag=go_fish,sort=random] at @s run tp ~ ~1 ~

## Random effects to players
execute if score effects_timer GameState matches 42 run effect give @r[gamemode=!creative] nausea 15 200 false
execute if score effects_timer GameState matches 20 run effect give @r[gamemode=!creative] levitation 1 1 false

## Reset the timer for 30 seconds
execute if score effects_timer GameState matches 1 run scoreboard players set effects_timer GameState 100

