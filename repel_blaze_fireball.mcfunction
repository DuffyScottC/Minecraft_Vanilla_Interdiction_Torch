#Rename all small_fireballs in radius 7 of torchMain
execute @e[name=torchMain,type=armor_stand] ~ ~ ~ entitydata @e[type=small_fireball,r=7] {CustomName:toBeReflected}

#Reflect North 1
execute @e[name=torchMain,type=armor_stand] ~-1 ~6 ~ execute @e[type=small_fireball,name=toBeReflected,dx=2,dy=-12,dz=-6] ~ ~ ~ summon minecraft:small_fireball ~ ~ ~ {direction:[0.0,-0.01,-0.1],power:[0.0,-0.01,-0.1]}

#Reflect NorthEast 8
execute @e[name=torchMain,type=armor_stand] ~2 ~6 ~-2 execute @e[type=small_fireball,name=toBeReflected,dx=4,dy=-12,dz=-4] ~ ~ ~ summon minecraft:small_fireball ~ ~ ~ {direction:[0.1,-0.01,-0.1],power:[0.1,-0.01,-0.1]}

#Reflect East 7
execute @e[name=torchMain,type=armor_stand] ~2 ~6 ~-1 execute @e[type=small_fireball,name=toBeReflected,dx=4,dy=-12,dz=2] ~ ~ ~ summon minecraft:small_fireball ~ ~ ~  {direction:[0.1,-0.01,0.0],power:[0.1,-0.01,0.0]}

#Reflect SouthEast 2
execute @e[name=torchMain,type=armor_stand] ~2 ~6 ~2 execute @e[type=small_fireball,name=toBeReflected,dx=4,dy=-12,dz=4] ~ ~ ~ summon minecraft:small_fireball ~ ~ ~ {direction:[0.1,-0.01,0.1],power:[0.1,-0.01,0.1]}

#Reflect South 3
execute @e[name=torchMain,type=armor_stand] ~1 ~6 ~1 execute @e[type=small_fireball,name=toBeReflected,dx=-2,dy=-12,dz=5] ~ ~ ~ summon minecraft:small_fireball ~ ~ ~ {direction:[0.0,-0.01,0.1],power:[0.0,-0.01,0.1]}

#Reflect SouthWest 5
execute @e[name=torchMain,type=armor_stand] ~-2 ~6 ~2 execute @e[type=small_fireball,name=toBeReflected,dx=-4,dy=-12,dz=4] ~ ~ ~ summon minecraft:small_fireball ~ ~ ~ {direction:[-0.1,-0.01,0.1],power:[-0.1,-0.01,0.1]}

#Reflect West 6
execute @e[name=torchMain,type=armor_stand] ~-2 ~6 ~1 execute @e[type=small_fireball,name=toBeReflected,dx=-4,dy=-12,dz=-2] ~ ~ ~ summon minecraft:small_fireball ~ ~ ~ {direction:[-0.1,-0.01,0.0],power:[-0.1,-0.01,0.0]}

#Reflect NorthWest 4
execute @e[name=torchMain,type=armor_stand] ~-2 ~6 ~-2 execute @e[type=small_fireball,name=toBeReflected,dx=-4,dy=-12,dz=-4] ~ ~ ~ summon minecraft:small_fireball ~ ~ ~ {direction:[-0.1,-0.01,-0.1],power:[-0.1,-0.01,-0.1]}

execute @e[name=torchMain] ~ ~ ~ kill @e[type=small_fireball,name=toBeReflected,r=6]