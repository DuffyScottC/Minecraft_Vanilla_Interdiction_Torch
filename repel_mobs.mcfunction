#Motion:[0.0,0.0,-0.5] # NORTH
#Motion:[0.4,0.0,-0.4] # NORTHEAST
#Motion:[0.5,0.0,0.0] # EAST
#Motion:[0.4,0.0,0.4] # SOUTHEAST
#Motion:[0.0,0.0,0.5] # SOUTH
#Motion:[-0.4,0.0,0.4] # SOUTHWEST
#Motion:[-0.5,0.0,0.0] # WEST
#Motion:[-0.4,0.0,-0.4] # NORTHWEST


#remove the RHOSTILE tag for entities outside of the radius
scoreboard players tag @e[rm=6,tag=RHOSTILE] remove RHOSTILE

#Label all hostile mobs in a radius of 5 blocks with the RHOSTILE tag
scoreboard players tag @e[r=6,type=blaze] add RHOSTILE
scoreboard players tag @e[r=6,type=chicken] add RHOSTILE {Passengers:[{id:"minecraft:zombie",IsBaby:1b}]}
scoreboard players tag @e[r=6,type=creeper] add RHOSTILE
scoreboard players tag @e[r=6,type=elder_guardian] add RHOSTILE
scoreboard players tag @e[r=6,type=endermite] add RHOSTILE
scoreboard players tag @e[r=6,type=evocation_illager] add RHOSTILE
scoreboard players tag @e[r=6,type=guardian] add RHOSTILE
scoreboard players tag @e[r=6,type=husk] add RHOSTILE
scoreboard players tag @e[r=6,type=silverfish] add RHOSTILE
scoreboard players tag @e[r=6,type=skeleton] add RHOSTILE
scoreboard players tag @e[r=6,type=skeleton_horse] add RHOSTILE {Passengers:[{id:"minecraft:skeleton"}]}
scoreboard players tag @e[r=6,type=stray] add RHOSTILE
scoreboard players tag @e[r=6,type=vindication_illager] add RHOSTILE
scoreboard players tag @e[r=6,type=vex] add RHOSTILE
scoreboard players tag @e[r=6,type=witch] add RHOSTILE
scoreboard players tag @e[r=6,type=wither_skeleton] add RHOSTILE
scoreboard players tag @e[r=6,type=zombie] add RHOSTILE
scoreboard players tag @e[r=6,type=zombie_villager] add RHOSTILE
scoreboard players tag @e[r=6,type=cave_spider] add RHOSTILE
scoreboard players tag @e[r=6,type=spider] add RHOSTILE
scoreboard players tag @e[r=6,type=enderman] add RHOSTILE
scoreboard players tag @e[r=6,type=illusion_illager] add RHOSTILE
scoreboard players tag @e[r=6,type=] add RHOSTILE
scoreboard players tag @e[r=6,type=] add RHOSTILE
scoreboard players tag @e[r=6,type=] add RHOSTILE
scoreboard players tag @e[r=6,type=] add RHOSTILE
#shulker

#Repel North
execute @s ~-1 ~6 ~ entitydata @e[tag=RHOSTILE,dx=2,dy=-12,dz=-6] {Motion:[0.0,0.0,-0.5]}

#Repel NorthEast
execute @s ~2 ~6 ~-2 entitydata @e[tag=RHOSTILE,dx=4,dy=-12,dz=-4] {Motion:[0.4,0.0,-0.4]}

#Repel East
execute @s ~2 ~6 ~-1 entitydata @e[tag=RHOSTILE,dx=4,dy=-12,dz=2] {Motion:[0.5,0.0,0.0]}

#Repel SouthEast
execute @s ~2 ~6 ~2 entitydata @e[tag=RHOSTILE,dx=4,dy=-12,dz=4] {Motion:[0.4,0.0,0.4]}

#Repel South
execute @s ~1 ~6 ~1 entitydata @e[tag=RHOSTILE,dx=-2,dy=-12,dz=5] {Motion:[0.0,0.0,0.5]}

#Repel SouthWest
execute @s ~-2 ~6 ~2 entitydata @e[tag=RHOSTILE,dx=-4,dy=-12,dz=4] {Motion:[-0.4,0.0,0.4]}

#Repel West
execute @s ~-2 ~6 ~1 entitydata @e[tag=RHOSTILE,dx=-4,dy=-12,dz=-2] {Motion:[-0.5,0.0,0.0]}

#Repel NorthWest
execute @s ~-2 ~6 ~-2 entitydata @e[tag=RHOSTILE,dx=-4,dy=-12,dz=-4] {Motion:[-0.4,0.0,-0.4]}