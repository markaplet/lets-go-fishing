say red team score

tag @e[type=sheep,distance=..1.09,sort=nearest,limit=1] add red_caught
kill @e[type=fishing_bobber,distance=..1.09,sort=nearest]
kill @e[type=sheep,distance=..1.09,limit=1]
tp @s ~ ~-200 ~ 
scoreboard players add Red_Team catch 1