#Label armor stands within a 5 block range of this arrow
scoreboard players tag @e[name=torchMain,type=armor_stand,r=5] add TORINRANGE

#Reflect North
execute @s ~1 ~6 ~1 execute @e[c=1,name=torchMain,type=armor_stand,tag=TORINRANGE,dx=-2,dy=-12,dz=5] ~ ~ ~ entitydata @e[type=arrow,r=5,c=1] {CustomName:toBeReflected}

execute @s[name=toBeReflected] ~ ~ ~ summon minecraft:arrow ~ ~ ~ {Motion:[0.0,0.2,-0.6],pickup:2b}


#execute @s ~1 ~6 ~1 execute @e[type=arrow,name=toBeReflected,dx=-2,dy=-12,dz=5] ~ ~ ~ summon minecraft:arrow ~ ~ ~ {Motion:[0.0,0.2,0.6],pickup:2b}

#Kill the arrow if it has been marked "toBeReflected" by a torchMain armor stand
kill @s[name=toBeReflected]