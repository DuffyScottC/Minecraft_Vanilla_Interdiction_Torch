entitydata @e[type=arrow,r=6] {CustomName:toBeReflected}

#Reflect North (test if torchMain is to south)
execute @e[type=arrow,r=5] ~1 ~6 ~1 execute @e[name=torchMain,type=armor_stand,dx=-2,dy=-12,dz=5] ~ ~ ~ summon minecraft:arrow ~ ~ ~ {Motion:[0.0,0.2,-0.6],pickup:2b}

kill @e[type=arrow,name=toBeReflected,r=5]