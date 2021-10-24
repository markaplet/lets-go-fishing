#  ------------------------------------
#  Attempt Direct Conversion from 1.11
#  ------------------------------------

#/execute @a[score_useRod_min=1] ~ ~ ~ detect ~ ~-1 ~ minecraft:wool 14 scoreboard players tag @e[name=unknown,c=1] add redTeam
execute at @a if block ~ ~-1 ~ red_wool run tag @e[type=fishing_bobber,limit=1,sort=nearest] add red_bobber

#/execute @e[name=unknown,tag=redTeam] ~ ~-0.5 ~ scoreboard players tag @e[type=minecraft:sheep,c=1,r=1,tag=!caught] add caught
execute at @e[type=fishing_bobber,tag=red_bobber] as @e[type=sheep,limit=1,sort=nearest] run tag @s add caught

#/scoreboard players add RedTeam scores 1
#scoreboard players add Red_Team catch 1

#/execute @e[tag=caught] ~ ~ ~ kill @e[name=unknown,r=1,c=1]
execute at @e[type=sheep,tag=caught] run kill @e[type=fishing_bobber,tag=red_bobber,limit=1,sort=nearest]

#/tp @e[tag=caught] ~ -200 ~
execute as @e[type=sheep,tag=caught,limit=1] run tp ~ ~-200 ~ 

#/scoreboard players reset @a[score_useRod_min=1] useRod
scoreboard players set @s use_rod 0

#/scoreboard players tag @e[name=unknown] add killme {OnGround:1b}

#/kill @e[tag=killme]