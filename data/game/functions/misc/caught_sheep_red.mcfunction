#  ------------------------------------
#  Red Team Catch
#  ------------------------------------

execute if score debug GameState matches 1 run say Red team score

tag @e[type=sheep,distance=..1.09,sort=nearest,limit=1] add red_caught
kill @e[type=fishing_bobber,distance=..1.09,sort=nearest]
kill @e[type=sheep,distance=..1.09,limit=1]
tp @s ~ ~-200 ~ 
playsound minecraft:entity.generic.splash master @p ~ ~ ~ 10000 1
scoreboard players add Red_Team catch 1