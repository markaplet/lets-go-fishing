## Clear players inventory
clear @s

## Give fishing license
give @s written_book{pages:['["",{"text":"Fishing License","bold":true,"color":"dark_red"},{"text":"\\n\\nFish in these parts are larger than normal and grow wool coats for the winter.\\n\\nUsing the supplied\\n","color":"reset"},{"text":"Castmaster 3000","color":"blue"},{"text":", lucky fisherman can catch these wooly abominations and exchange them for points.","color":"reset"}]','["",{"text":"Rules","bold":true,"color":"dark_red"},{"text":"\\n\\nAnglers must stay within their teams allocated casting zone.\\n\\nA teams casting zone is defined by the dyed \\"Wool Trout\\" pelts on the ground. (wool blocks)\\n\\n","color":"reset"},{"text":"Continued on next page","color":"gray"}]','["",{"text":"Rules","bold":true,"color":"dark_red"},{"text":" (continued)\\n\\nPlayers choose teams when they stand on the colored fishing zones.\\n\\nPlayers can play for another team mid-game if they wish, but their score is non-transferable.\\n ","color":"reset"}]','["",{"text":"Size Guide","bold":true,"color":"dark_red"},{"text":"\\n\\nWool Trout\'s size can be determined by the difficulty level.\\n\\n","color":"reset"},{"text":"Easy:","color":"blue"},{"text":" Large Trout\\n","color":"reset"},{"text":"Medium:","color":"blue"},{"text":" Small Trout\\n","color":"reset"},{"text":"Hard:","color":"blue"},{"text":" Small Wool Trout with various angler and trout effects.\\n\\n         ","color":"reset"},{"text":"><{{{(","color":"gold"},{"text":"°","color":"dark_gray"},{"text":">","color":"gold"}]'],title:"Fishing License",author:"Department of Fish and Game"}

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