#  ------------------------------------
#  GameState scoreboard matches 2
#  ------------------------------------

## Debug output
execute if score debug GameState matches 1 run tellraw @a[gamemode=creative] ["",{"text":"Debug:","color":"light_purple"},{"text":" Gamestate 2 - Countdown"}]

title @a times 0 0 20
execute if score countdown GameState matches 81 run title @a title [{"text":"3"}] 
execute if score countdown GameState matches 61 run title @a title [{"text":"2"}]
execute if score countdown GameState matches 41 run title @a title [{"text":"1"}]
execute if score countdown GameState matches 21 run title @a title {"text":"GO!","color":"green"}


## Play a little tune with the timer
execute if score countdown GameState matches 81 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 10000
execute if score countdown GameState matches 61 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 10000
execute if score countdown GameState matches 41 run playsound minecraft:entity.experience_orb.pickup master @a ~ ~ ~ 10000
execute if score countdown GameState matches 21 run playsound minecraft:entity.player.levelup master @a ~ ~ ~ 10000

## Set the game state to 2
execute if score countdown GameState matches 1 run scoreboard players set dummy GameState 3

## Countdown starts at 81. Remove 1 every tick so we can display countdown timer
scoreboard players remove countdown GameState 1