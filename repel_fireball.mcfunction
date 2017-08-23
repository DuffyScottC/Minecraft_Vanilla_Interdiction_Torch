#Rename all fireballs in radius 7 of torchMain
execute @s ~ ~ ~ entitydata @e[type=fireball,r=7] {CustomName:toBeReflected}

#Reflect North 1
execute @s ~-1 ~6 ~ entitydata @e[type=fireball,name=toBeReflected,dx=2,dy=-12,dz=-6] {direction:[0.0,-0.01,-0.1],power:[0.0,-0.01,-0.1]}

#Reflect NorthEast 8
execute @s ~2 ~6 ~-2 entitydata @e[type=fireball,name=toBeReflected,dx=4,dy=-12,dz=-4] {direction:[0.1,-0.01,-0.1],power:[0.1,-0.01,-0.1]}

#Reflect East 7
execute @s ~2 ~6 ~-1 entitydata @e[type=fireball,name=toBeReflected,dx=4,dy=-12,dz=2] {direction:[0.1,-0.01,0.0],power:[0.1,-0.01,0.0]}

#Reflect SouthEast 2
execute @s ~2 ~6 ~2 entitydata @e[type=fireball,name=toBeReflected,dx=4,dy=-12,dz=4] {direction:[0.1,-0.01,0.1],power:[0.1,-0.01,0.1]}

#Reflect South 3
execute @s ~1 ~6 ~1 entitydata @e[type=fireball,name=toBeReflected,dx=-2,dy=-12,dz=5] {direction:[0.0,-0.01,0.1],power:[0.0,-0.01,0.1]}

#Reflect SouthWest 5
execute @s ~-2 ~6 ~2 entitydata @e[type=fireball,name=toBeReflected,dx=-4,dy=-12,dz=4] {direction:[-0.1,-0.01,0.1],power:[-0.1,-0.01,0.1]}

#Reflect West 6
execute @s ~-2 ~6 ~1 entitydata @e[type=fireball,name=toBeReflected,dx=-4,dy=-12,dz=-2] {direction:[-0.1,-0.01,0.0],power:[-0.1,-0.01,0.0]}

#Reflect NorthWest 4
execute @s ~-2 ~6 ~-2 entitydata @e[type=fireball,name=toBeReflected,dx=-4,dy=-12,dz=-4] {direction:[-0.1,-0.01,-0.1],power:[-0.1,-0.01,-0.1]}