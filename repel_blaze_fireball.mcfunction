#Rename all small_fireballs in radius 7 of torchMain
execute @s ~ ~ ~ entitydata @e[type=small_fireball,r=7] {CustomName:toBeReflected}

#Reflect North
execute @s ~-1 ~6 ~ entitydata @e[type=small_fireball,name=toBeReflected,dx=2,dy=-12,dz=-6] {direction:[0.0,-0.01,-0.1],power:[0.0,-0.01,-0.1]}

#Reflect NorthEast
execute @s ~2 ~6 ~-2 entitydata @e[type=small_fireball,name=toBeReflected,dx=4,dy=-12,dz=-4] {direction:[0.1,-0.01,-0.1],power:[0.1,-0.01,-0.1]}

#Reflect East
execute @s ~2 ~6 ~-1 entitydata @e[type=small_fireball,name=toBeReflected,dx=4,dy=-12,dz=2] {direction:[0.1,-0.01,0.0],power:[0.1,-0.01,0.0]}

#Reflect SouthEast
execute @s ~2 ~6 ~2 entitydata @e[type=small_fireball,name=toBeReflected,dx=4,dy=-12,dz=4] {direction:[0.1,-0.01,0.1],power:[0.1,-0.01,0.1]}

#Reflect South
execute @s ~1 ~6 ~1 entitydata @e[type=small_fireball,name=toBeReflected,dx=-2,dy=-12,dz=5] {direction:[0.0,-0.01,0.1],power:[0.0,-0.01,0.1]}

#Reflect SouthWest
execute @s ~-2 ~6 ~2 entitydata @e[type=small_fireball,name=toBeReflected,dx=-4,dy=-12,dz=4] {direction:[-0.1,-0.01,0.1],power:[-0.1,-0.01,0.1]}

#Reflect West
execute @s ~-2 ~6 ~1 entitydata @e[type=small_fireball,name=toBeReflected,dx=-4,dy=-12,dz=-2] {direction:[-0.1,-0.01,0.0],power:[-0.1,-0.01,0.0]}

#Reflect NorthWest
execute @s ~-2 ~6 ~-2 entitydata @e[type=small_fireball,name=toBeReflected,dx=-4,dy=-12,dz=-4] {direction:[-0.1,-0.01,-0.1],power:[-0.1,-0.01,-0.1]}