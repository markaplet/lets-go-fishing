#  ------------------------------------
#  Scoreboards
#  Install scoreboards in final map
#  ------------------------------------

## Create scoreboards for managing behind the scenes score keeping
scoreboard objectives add GameState dummy
scoreboard objectives add connection dummy
scoreboard objectives add catch dummy {"text":"Sheep Caught", "color":"white","bold":true}
scoreboard objectives add use_rod minecraft.used:minecraft.fishing_rod 
scoreboard objectives add left_game minecraft.custom:minecraft.leave_game

## Announce that scoreboard was added
tellraw @a [{"text":"Scoreboards added","color":"green"}]

#  ------------------------------------
#  Add team colors 
#  ------------------------------------
## Create teams by color
team add red
team add purple
team add green
team add orange

## Assign color to teams
team modify red color red
team modify purple color light_purple
team modify green color green
team modify orange color gold

## Add fake players to teams. (Labels visible in sidebar)
team join red Red_Team
team join purple Purple_Team
team join green Green_Team
team join orange Orange_Team

## Add fake players to teams
scoreboard players add Red_Team catch 0
scoreboard players add Purple_Team catch 0
scoreboard players add Green_Team catch 0
scoreboard players add Orange_Team catch 0

## Display Sheep Caught on sidebar
scoreboard objectives setdisplay sidebar caught 