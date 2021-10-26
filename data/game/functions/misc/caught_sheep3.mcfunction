#  ------------------------------------
#  Attempt Direct Conversion from 1.11
#  ------------------------------------
execute as @s run say red cast

#/execute @a[score_useRod_min=1] ~ ~ ~ detect ~ ~-1 ~ minecraft:wool 14 scoreboard players tag @e[name=unknown,c=1] add redTeam
execute as @s at @s as @e[type=fishing_bobber,distance=..3,limit=1] run tag @e[type=fishing_bobber,tag=!orange_bobber,limit=1] add red_bobber



#/execute @e[name=unknown,tag=redTeam] ~ ~-0.5 ~ scoreboard players tag @e[type=minecraft:sheep,c=1,r=1,tag=!caught] add caught
execute as @e[type=fishing_bobber,tag=red_bobber,limit=1] at @s as @e[type=sheep,limit=1,sort=nearest] run say Im caught!
execute as @e[type=fishing_bobber,tag=red_bobber,limit=1] at @s as @e[type=sheep,limit=1,sort=nearest] run tag @s add red_caught

#/scoreboard players add RedTeam scores 1
#scoreboard players add Red_Team catch 1

#/execute @e[tag=caught] ~ ~ ~ kill @e[name=unknown,r=1,c=1]
#execute at @e[type=sheep,tag=caught] run kill @e[type=fishing_bobber,tag=red_bobber,limit=1,distance=1]

#/tp @e[tag=caught] ~ -200 ~
#execute as @e[type=sheep,tag=caught,limit=1] run tp ~ ~-200 ~ 

#/scoreboard players reset @a[score_useRod_min=1] useRod
scoreboard players set @s use_rod 0

#/scoreboard players tag @e[name=unknown] add killme {OnGround:1b}

#/kill @e[tag=killme]


