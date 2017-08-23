#Motion:[0.0,0.0,-0.1] # North
#Motion:[0.1,0.0,-0.1] # NorthEast
#Motion:[0.1,0.0,0.0] # East
#Motion:[0.1,0.0,0.1] # SouthEast
#Motion:[0.0,0.0,0.1] # South
#Motion:[-0.1,0.0,0.1] # SouthWest
#Motion:[-0.1,0.0,0.0] # West
#Motion:[-0.1,0.0,-0.1] # NorthWest

#Repel North
execute @s ~-1 ~6 ~ entitydata @e[tag=RHOSTILE,dx=2,dy=-12,dz=-6] {Motion:[0.0,0.0,-0.1]}

#Repel NorthEast
execute @s ~2 ~6 ~-2 entitydata @e[tag=RHOSTILE,dx=4,dy=-12,dz=-4] {Motion:[0.1,0.0,-0.1]}

#Repel East
execute @s ~2 ~6 ~-1 entitydata @e[tag=RHOSTILE,dx=4,dy=-12,dz=2] {Motion:[0.1,0.0,0.0]}

#Repel SouthEast
execute @s ~2 ~6 ~2 entitydata @e[tag=RHOSTILE,dx=4,dy=-12,dz=4] {Motion:[0.1,0.0,0.1]}

#Repel South
execute @s ~1 ~6 ~1 entitydata @e[tag=RHOSTILE,dx=-2,dy=-12,dz=5] {Motion:[0.0,0.0,0.1]}

#Repel SouthWest
execute @s ~-2 ~6 ~2 entitydata @e[tag=RHOSTILE,dx=-4,dy=-12,dz=4] {Motion:[-0.1,0.0,0.1]}

#Repel West
execute @s ~-2 ~6 ~1 entitydata @e[tag=RHOSTILE,dx=-4,dy=-12,dz=-2] {Motion:[-0.1,0.0,0.0]}

#Repel NorthWest
execute @s ~-2 ~6 ~-2 entitydata @e[tag=RHOSTILE,dx=-4,dy=-12,dz=-4] {Motion:[-0.1,0.0,-0.1]}

#remove the RHOSTILE tag for entities outside of the radius
scoreboard players tag @e[rm=5,tag=RHOSTILE] remove RHOSTILE

#Label all hostile mobs in a radius of 5 blocks with the RHOSTILE tag
scoreboard players tag @e[r=5,type=blaze] add RHOSTILE
scoreboard players tag @e[r=5,type=chicken] add RHOSTILE {Passengers:[{id:"minecraft:zombie",IsBaby:1b}]}
scoreboard players tag @e[r=5,type=creeper] add RHOSTILE
scoreboard players tag @e[r=5,type=elder_guardian] add RHOSTILE
scoreboard players tag @e[r=5,type=endermite] add RHOSTILE
scoreboard players tag @e[r=5,type=evocation_illager] add RHOSTILE
scoreboard players tag @e[r=5,type=guardian] add RHOSTILE
scoreboard players tag @e[r=5,type=husk] add RHOSTILE
scoreboard players tag @e[r=5,type=silverfish] add RHOSTILE
scoreboard players tag @e[r=5,type=skeleton] add RHOSTILE
scoreboard players tag @e[r=5,type=skeleton_horse] add RHOSTILE {Passengers:[{id:"minecraft:skeleton"}]}
scoreboard players tag @e[r=5,type=stray] add RHOSTILE
scoreboard players tag @e[r=5,type=vindication_illager] add RHOSTILE
scoreboard players tag @e[r=5,type=vex] add RHOSTILE
scoreboard players tag @e[r=5,type=witch] add RHOSTILE
scoreboard players tag @e[r=5,type=wither_skeleton] add RHOSTILE
scoreboard players tag @e[r=5,type=zombie] add RHOSTILE
scoreboard players tag @e[r=5,type=zombie_villager] add RHOSTILE
scoreboard players tag @e[r=5,type=cave_spider] add RHOSTILE
scoreboard players tag @e[r=5,type=enderman] add RHOSTILE
scoreboard players tag @e[r=5,type=illusion_illager] add RHOSTILE
scoreboard players tag @e[r=5,type=] add RHOSTILE
scoreboard players tag @e[r=5,type=] add RHOSTILE
scoreboard players tag @e[r=5,type=] add RHOSTILE
scoreboard players tag @e[r=5,type=] add RHOSTILE
#shulker