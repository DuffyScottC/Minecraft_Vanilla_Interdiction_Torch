#Label armor stands within a 7 block range of this arrow
scoreboard players tag @e[name=torchMain,type=armor_stand,r=7] add TORINRANGE

#MARK: - Reflect North
#Test if there is a torchMain armor stand South of this arrow
execute @s ~1 ~6 ~1 execute @e[c=1,name=torchMain,type=armor_stand,tag=TORINRANGE,dx=-2,dy=-12,dz=5] ~ ~ ~ entitydata @e[type=arrow,c=1,name=!alreadyReflected] {CustomName:toBeReflected}

#Summon a North-going arrow if there is a torchMain armor stand South of this arrow (which we tested for above)
execute @s[name=toBeReflected] ~ ~ ~ summon minecraft:arrow ~ ~ ~ {Motion:[0.0,0.2,-0.6],pickup:2b}

#rename this arrow if we were successful (if the current name of this arrow is "toBeReflected")
entitydata @s[name=toBeReflected] {CustomName:alreadyReflected}



#MARK: - Reflect NorthEast
#Test if there is a torchMain armor stand SouthWest of this arrow
execute @s ~-2 ~6 ~2 execute @e[c=1,name=torchMain,type=armor_stand,tag=TORINRANGE,dx=-4,dy=-12,dz=4] ~ ~ ~ entitydata @e[type=arrow,c=1,name=!alreadyReflected] {CustomName:toBeReflected}

#Summon a NorthEast-going arrow if there is a torchMain armor stand SouthWest of this arrow (which we tested for above)
execute @s[name=toBeReflected] ~ ~ ~ summon minecraft:arrow ~ ~ ~ {Motion:[0.4,0.2,-0.4],pickup:2b}

#rename this arrow if we were successful (if the current name of this arrow is "toBeReflected")
entitydata @s[name=toBeReflected] {CustomName:alreadyReflected}



#MARK: - Reflect East
#Test if there is a torchMain armor stand West of this arrow
execute @s ~-2 ~6 ~1 execute @e[c=1,name=torchMain,type=armor_stand,tag=TORINRANGE,dx=-4,dy=-12,dz=-2] ~ ~ ~ entitydata @e[type=arrow,c=1,name=!alreadyReflected] {CustomName:toBeReflected}

#Summon a East-going arrow if there is a torchMain armor stand West of this arrow (which we tested for above)
execute @s[name=toBeReflected] ~ ~ ~ summon minecraft:arrow ~ ~ ~ {Motion:[0.6,0.2,0.0],pickup:2b}

#rename this arrow if we were successful (if the current name of this arrow is "toBeReflected")
entitydata @s[name=toBeReflected] {CustomName:alreadyReflected}



#MARK: - Reflect SouthEast
#Test if there is a torchMain armor stand NorthWest of this arrow
execute @s ~-2 ~6 ~-2 execute @e[c=1,name=torchMain,type=armor_stand,tag=TORINRANGE,dx=-4,dy=-12,dz=-4] ~ ~ ~ entitydata @e[type=arrow,c=1,name=!alreadyReflected] {CustomName:toBeReflected}

#Summon a SouthEast-going arrow if there is a torchMain armor stand NorthWest of this arrow (which we tested for above)
execute @s[name=toBeReflected] ~ ~ ~ summon minecraft:arrow ~ ~ ~ {Motion:[0.4,0.2,0.4],pickup:2b}

#rename this arrow if we were successful (if the current name of this arrow is "toBeReflected")
entitydata @s[name=toBeReflected] {CustomName:alreadyReflected}



#MARK: - Reflect South
#Test if there is a torchMain armor stand North of this arrow
execute @s ~-1 ~6 ~ execute @e[c=1,name=torchMain,type=armor_stand,tag=TORINRANGE,dx=2,dy=-12,dz=-6] ~ ~ ~ entitydata @e[type=arrow,c=1,name=!alreadyReflected] {CustomName:toBeReflected}

#Summon a South-going arrow if there is a torchMain armor stand North of this arrow (which we tested for above)
execute @s[name=toBeReflected] ~ ~ ~ summon minecraft:arrow ~ ~ ~ {Motion:[0.0,0.2,0.6],pickup:2b,pickup:2b}

#rename this arrow if we were successful (if the current name of this arrow is "toBeReflected")
entitydata @s[name=toBeReflected] {CustomName:alreadyReflected}



#MARK: - Reflect SouthWest
#Test if there is a torchMain armor stand NorthEast of this arrow
execute @s ~2 ~6 ~-2 execute @e[c=1,name=torchMain,type=armor_stand,tag=TORINRANGE,dx=4,dy=-12,dz=-4] ~ ~ ~ entitydata @e[type=arrow,c=1,name=!alreadyReflected] {CustomName:toBeReflected}

#Summon a SouthWest-going arrow if there is a torchMain armor stand NorthEast of this arrow (which we tested for above)
execute @s[name=toBeReflected] ~ ~ ~ summon minecraft:arrow ~ ~ ~ {Motion:[-0.4,0.2,0.4],pickup:2b}

#rename this arrow if we were successful (if the current name of this arrow is "toBeReflected")
entitydata @s[name=toBeReflected] {CustomName:alreadyReflected}



#MARK: - Reflect West
#Test if there is a torchMain armor stand East of this arrow
execute @s ~2 ~6 ~-1 execute @e[c=1,name=torchMain,type=armor_stand,tag=TORINRANGE,dx=4,dy=-12,dz=2] ~ ~ ~ entitydata @e[type=arrow,c=1,name=!alreadyReflected] {CustomName:toBeReflected}

#Summon a West-going arrow if there is a torchMain armor stand East of this arrow (which we tested for above)
execute @s[name=toBeReflected] ~ ~ ~ summon minecraft:arrow ~ ~ ~ {Motion:[-0.6,0.2,0.0],pickup:2b}

#rename this arrow if we were successful (if the current name of this arrow is "toBeReflected")
entitydata @s[name=toBeReflected] {CustomName:alreadyReflected}



#MARK: - Reflect NorthWest
#Test if there is a torchMain armor stand SouthEast of this arrow
execute @s ~2 ~6 ~2 execute @e[c=1,name=torchMain,type=armor_stand,tag=TORINRANGE,dx=4,dy=-12,dz=4] ~ ~ ~ entitydata @e[type=arrow,c=1,name=!alreadyReflected] {CustomName:toBeReflected}

#Summon a NorthWest-going arrow if there is a torchMain armor stand SouthEast of this arrow (which we tested for above)
execute @s[name=toBeReflected] ~ ~ ~ summon minecraft:arrow ~ ~ ~ {Motion:[-0.4,0.2,-0.4],pickup:2b}

#rename this arrow if we were successful (if the current name of this arrow is "toBeReflected")
entitydata @s[name=toBeReflected] {CustomName:alreadyReflected}


#Kill this arrow if it has been marked "toBeReflected" by a torchMain armor stand because we are done with it
kill @s[name=alreadyReflected]