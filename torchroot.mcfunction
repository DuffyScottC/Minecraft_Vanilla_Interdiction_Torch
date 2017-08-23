#execute @e[type=player,rym=158,ry=-157] ~ ~ ~ say 1 rym=158,ry=-157 North
#execute @e[type=player,rym=-156,ry=-112] ~ ~ ~ say 2 rym=-156,ry=-112 NorthEast
#execute @e[type=player,rym=-111,ry=-67] ~ ~ ~ say 3 rym=-111,ry=-67 East
#execute @e[type=player,rym=-66,ry=-22] ~ ~ ~ say 4 rym=-66,ry=-22 SouthEast
#execute @e[type=player,rym=-21,ry=23] ~ ~ ~ say 5 rym=-21,ry=23 South
#execute @e[type=player,rym=24,ry=68] ~ ~ ~ say 6 rym=24,ry=68 SouthWest
#execute @e[type=player,rym=69,ry=113] ~ ~ ~ say 7 rym=69,ry=113 West
#execute @e[type=player,rym=114,ry=158] ~ ~ ~ say 8 rym=114,ry=158 NorthWest

execute @e[name=torchMain,type=armor_stand] ~ ~ ~ function repel_torch:repel_mobs
#execute @e[name=torchMain,type=armor_stand] ~ ~ ~ function repel_torch:repel_arrows
execute @e[type=arrow] ~ ~ ~ function repel_torch:repel_arrow
execute @e[name=torchMain,type=armor_stand] ~ ~ ~ function repel_torch:repel_fireball
execute @e[name=torchMain,type=armor_stand] ~ ~ ~ function repel_torch:repel_blaze_fireball

#To save processing power, this function only runs if a player has tossed a diamond
function repel_torch:diamond_to_torch if @a[score_dropDiamond_min=1]

#When the user places a new interdiction torch, we need to set up the torch
execute @e[name=torchMainNew,type=armor_stand] ~ ~ ~ function repel_torch:place_torch

#Allow the user to break the torch they can see in order to get back the interdiction torch and place it somewhere else
execute @e[name=torchMain,type=armor_stand] ~ ~ ~ detect ~ ~ ~ minecraft:air 0 function repel_torch:break_torch

execute @e[name=torchMain] ~ ~ ~  particle happyVillager ~ ~.6 ~ 1 1 1 .5 0

