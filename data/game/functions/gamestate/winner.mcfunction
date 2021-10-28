#  ------------------------------------
#  GameState scoreboard matches 5
#  ------------------------------------

## Debug Output
execute if score debug GameState matches 1 run tellraw @a[gamemode=creative] ["",{"text":"Debug:","color":"light_purple"},{"text":" Gamestate 5 - Winners"}]

effect clear @a

## Scoreboard operation to determine who won the match
scoreboard players operation $who_won catch > Red_Team catch
scoreboard players operation $who_won catch > Orange_Team catch
scoreboard players operation $who_won catch > Purple_Team catch
scoreboard players operation $who_won catch > Green_Team catch

## Winner Title
title @a times 20 100 20
title @a title {"text":"The winner is","color":"white"}

## Announce the winning team
execute if score Red_Team catch = $who_won catch run title @a subtitle ["",{"text":"Red Team","color":"red"}]
execute if score Orange_Team catch = $who_won catch run title @a subtitle ["",{"text":"Orange Team","color":"gold"}]
execute if score Purple_Team catch = $who_won catch run title @a subtitle ["",{"text":"Purple Team","color":"light_purple"}]
execute if score Green_Team catch = $who_won catch run title @a subtitle ["",{"text":"Green Team","color":"green"}]

## Reset the who_won player 
scoreboard players reset $who_won catch

#playsound minecraft:ui.toast.challenge_complete master @a ~ ~ ~ 10000 1
playsound minecraft:entity.firework_rocket.twinkle_far master @a ~ ~ ~ 10000 1

## Fireworks over map
summon armor_stand 8 4 17 {NoGravity:1b,Tags:["fireworks"]}
execute as @e[tag=fireworks] at @s run function game:misc/fireworks
kill @e[tag=fireworks]

## Move game state back to the lobby
scoreboard players set dummy GameState 0