#The actual launch direction of the arrow
#summon minecraft:arrow 1066 60 702 {Motion:[0.0,0.2,0.6]} #South
#summon minecraft:arrow 1066 60 702 {Motion:[-0.4,0.2,0.4]} #SouthWest
#summon minecraft:arrow 1066 60 702 {Motion:[-0.6,0.2,0.0]} #West
#summon minecraft:arrow 1066 60 702 {Motion:[-0.4,0.2,-0.4]} #NorthWest
#summon minecraft:arrow 1066 60 702 {Motion:[0.0,0.2,-0.6]} #North
#summon minecraft:arrow 1066 60 702 {Motion:[0.4,0.2,-0.4]} #NorthEast
#summon minecraft:arrow 1066 60 702 {Motion:[0.6,0.2,0.0]} #East
#summon minecraft:arrow 1066 60 702 {Motion:[0.4,0.2,0.4]} #SouthEast

#Rename all arrows in radius 6 of torchMain
execute @e[name=torchMain,type=armor_stand] ~ ~ ~ entitydata @e[type=arrow,r=6] {CustomName:toBeReflected}

#Reflect North
execute @e[name=torchMain,type=armor_stand] ~-1 ~6 ~ execute @e[type=arrow,name=toBeReflected,dx=2,dy=-12,dz=-6] ~ ~ ~ summon minecraft:arrow ~ ~ ~ {Motion:[0.0,0.2,-0.6],pickup:2b}

#Reflect NorthEast
execute @e[name=torchMain,type=armor_stand] ~2 ~6 ~-2 execute @e[type=arrow,name=toBeReflected,dx=4,dy=-12,dz=-4] ~ ~ ~ summon minecraft:arrow ~ ~ ~ {Motion:[0.4,0.2,-0.4],pickup:2b}

#Reflect East
execute @e[name=torchMain,type=armor_stand] ~2 ~6 ~-1 execute @e[type=arrow,name=toBeReflected,dx=4,dy=-12,dz=2] ~ ~ ~ summon minecraft:arrow ~ ~ ~ {Motion:[0.6,0.2,0.0],pickup:2b}

#Reflect SouthEast
execute @e[name=torchMain,type=armor_stand] ~2 ~6 ~2 execute @e[type=arrow,name=toBeReflected,dx=4,dy=-12,dz=4] ~ ~ ~ summon minecraft:arrow ~ ~ ~ {Motion:[0.4,0.2,0.4],pickup:2b}

#Reflect South
execute @e[name=torchMain,type=armor_stand] ~1 ~6 ~1 execute @e[type=arrow,name=toBeReflected,dx=-2,dy=-12,dz=5] ~ ~ ~ summon minecraft:arrow ~ ~ ~ {Motion:[0.0,0.2,0.6],pickup:2b}

#Reflect SouthWest
execute @e[name=torchMain,type=armor_stand] ~-2 ~6 ~2 execute @e[type=arrow,name=toBeReflected,dx=-4,dy=-12,dz=4] ~ ~ ~ summon minecraft:arrow ~ ~ ~ {Motion:[-0.4,0.2,0.4],pickup:2b}

#Reflect West
execute @e[name=torchMain,type=armor_stand] ~-2 ~6 ~1 execute @e[type=arrow,name=toBeReflected,dx=-4,dy=-12,dz=-2] ~ ~ ~ summon minecraft:arrow ~ ~ ~ {Motion:[-0.6,0.2,0.0],pickup:2b}

#Reflect NorthWest
execute @e[name=torchMain,type=armor_stand] ~-2 ~6 ~-2 execute @e[type=arrow,name=toBeReflected,dx=-4,dy=-12,dz=-4] ~ ~ ~ summon minecraft:arrow ~ ~ ~ {Motion:[-0.4,0.2,-0.4],pickup:2b}

execute @e[name=torchMain] ~ ~ ~ kill @e[type=arrow,name=toBeReflected,r=6]