title @s[scores={connection=1..}] title [{"text":"Let's Go Fishing","bold":true,"color":"dark_red"}]
title @s[scores={connection=1..}] subtitle [{"text":"\u2744 Holiday Edition \u2744"}]
playsound minecraft:entity.player.levelup master @s[scores={connection=1..}] ~ ~ ~ 10000

## Reset players connection score. Add initialize tag so title does not continue to play
scoreboard players reset @s connection
scoreboard players reset @s left_game
tag @s add initialized