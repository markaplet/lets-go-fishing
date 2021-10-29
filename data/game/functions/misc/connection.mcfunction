## Clear players inventory
clear @s

## Give fishing license
give @s written_book{pages:['["",{"text":"Fishing License","bold":true,"color":"dark_blue"},{"text":"\\n\\nFish in these parts are larger than normal and grow wool coats for the winter.\\n\\nUsing your supplied ","color":"reset"},{"text":"Castmaster","underlined":true,"color":"blue","clickEvent":{"action":"run_command","value":"give TODO"}},{"text":" 3000 lucky fisherman can reel these wooly abominations in to their ","color":"reset"},{"text":"catch zone","color":"dark_red"},{"text":" for points.","color":"reset"}]'],display:{Name:'{"text":"Fishing License","color":"aqua"}'},title:"Fishing License",author:"Department of Fish and Game"}

## Give castmaster
give @s fishing_rod{display:{Name:'{"text":"Castmaster 3000","color":"aqua"}',Lore:['{"text":"Registered Trademark 2021 Hogbits Inc."}']},Unbreakable:1b,Enchantments:[{id:"minecraft:luck_of_the_sea",lvl:1s}]} 1

## Teleport the player top the map.
tp @s 10 12 -5


title @s[scores={connection=1..}] title [{"text":"Let's Go Fishing","bold":true,"color":"dark_red"}]
title @s[scores={connection=1..}] subtitle [{"text":"\u2744 Holiday Edition \u2744"}]
playsound minecraft:entity.player.levelup master @s[scores={connection=1..}] ~ ~ ~ 10000

## Reset players connection score. Add initialize tag so title does not continue to play
scoreboard players reset @s connection
scoreboard players reset @s left_game
tag @s add initialized