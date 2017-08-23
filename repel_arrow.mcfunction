#Label armor stands within a 5 block range of this arrow
scoreboard players tag @e[name=torchMain,type=armor_stand,r=5] add TORINRANGE

#MARK: - Reflect North
#Test if there is a torchMain armor stand South of this arrow
execute @s ~1 ~6 ~1 execute @e[c=1,name=torchMain,type=armor_stand,tag=TORINRANGE,dx=-2,dy=-12,dz=5] ~ ~ ~ entitydata @e[type=arrow,r=5,c=1] {CustomName:toBeReflected}

#Summon a North-going arrow if there is a torchMain armor stand South of this arrow (which we tested for above)
execute @s[name=toBeReflected] ~ ~ ~ summon minecraft:arrow ~ ~ ~ {Motion:[0.0,0.2,-0.6],pickup:2b}



#MARK: - Reflect NorthEast
#Test if there is a torchMain armor stand SouthWest of this arrow
execute @s ~-2 ~6 ~2 execute @e[c=1,name=torchMain,type=armor_stand,tag=TORINRANGE,dx=-4,dy=-12,dz=4] ~ ~ ~ entitydata @e[type=arrow,r=5,c=1] {CustomName:toBeReflected}

#Summon a NorthEast-going arrow if there is a torchMain armor stand SouthWest of this arrow (which we tested for above)
execute @s[name=toBeReflected] ~ ~ ~ summon minecraft:arrow ~ ~ ~ {Motion:[0.4,0.2,-0.4],pickup:2b}



#MARK: - Reflect East
#Test if there is a torchMain armor stand West of this arrow
execute @s ~-2 ~6 ~1 execute @e[c=1,name=torchMain,type=armor_stand,tag=TORINRANGE,dx=-4,dy=-12,dz=-2] ~ ~ ~ entitydata @e[type=arrow,r=5,c=1] {CustomName:toBeReflected}

#Summon a East-going arrow if there is a torchMain armor stand West of this arrow (which we tested for above)
execute @s[name=toBeReflected] ~ ~ ~ summon minecraft:arrow ~ ~ ~ {Motion:[0.6,0.2,0.0],pickup:2b}



#MARK: - Reflect SouthEast
#Test if there is a torchMain armor stand OPPOSITE_TEST_DIRECTION of this arrow
execute @s REL_COORDS_OF_OPPOSITE_DIRECTION execute @e[c=1,name=torchMain,type=armor_stand,tag=TORINRANGE,A_R_E_A_DETECTION] ~ ~ ~ entitydata @e[type=arrow,r=5,c=1] {CustomName:toBeReflected}

#Summon a FLING__DIRECTION-going arrow if there is a torchMain armor stand OPPOSITE_TEST_DIRECTION of this arrow (which we tested for above)
execute @s[name=toBeReflected] ~ ~ ~ summon minecraft:arrow ~ ~ ~ {M_O_T_I_O_N_T_A_G,pickup:2b}



#MARK: - Reflect South
#Test if there is a torchMain armor stand OPPOSITE_TEST_DIRECTION of this arrow
execute @s REL_COORDS_OF_OPPOSITE_DIRECTION execute @e[c=1,name=torchMain,type=armor_stand,tag=TORINRANGE,A_R_E_A_DETECTION] ~ ~ ~ entitydata @e[type=arrow,r=5,c=1] {CustomName:toBeReflected}

#Summon a FLING__DIRECTION-going arrow if there is a torchMain armor stand OPPOSITE_TEST_DIRECTION of this arrow (which we tested for above)
execute @s[name=toBeReflected] ~ ~ ~ summon minecraft:arrow ~ ~ ~ {M_O_T_I_O_N_T_A_G,pickup:2b}



#MARK: - Reflect SouthWest
#Test if there is a torchMain armor stand OPPOSITE_TEST_DIRECTION of this arrow
execute @s REL_COORDS_OF_OPPOSITE_DIRECTION execute @e[c=1,name=torchMain,type=armor_stand,tag=TORINRANGE,A_R_E_A_DETECTION] ~ ~ ~ entitydata @e[type=arrow,r=5,c=1] {CustomName:toBeReflected}

#Summon a FLING__DIRECTION-going arrow if there is a torchMain armor stand OPPOSITE_TEST_DIRECTION of this arrow (which we tested for above)
execute @s[name=toBeReflected] ~ ~ ~ summon minecraft:arrow ~ ~ ~ {M_O_T_I_O_N_T_A_G,pickup:2b}



#MARK: - Reflect West
#Test if there is a torchMain armor stand OPPOSITE_TEST_DIRECTION of this arrow
execute @s REL_COORDS_OF_OPPOSITE_DIRECTION execute @e[c=1,name=torchMain,type=armor_stand,tag=TORINRANGE,A_R_E_A_DETECTION] ~ ~ ~ entitydata @e[type=arrow,r=5,c=1] {CustomName:toBeReflected}

#Summon a FLING__DIRECTION-going arrow if there is a torchMain armor stand OPPOSITE_TEST_DIRECTION of this arrow (which we tested for above)
execute @s[name=toBeReflected] ~ ~ ~ summon minecraft:arrow ~ ~ ~ {M_O_T_I_O_N_T_A_G,pickup:2b}



#MARK: - Reflect NorthWest
#Test if there is a torchMain armor stand OPPOSITE_TEST_DIRECTION of this arrow
execute @s REL_COORDS_OF_OPPOSITE_DIRECTION execute @e[c=1,name=torchMain,type=armor_stand,tag=TORINRANGE,A_R_E_A_DETECTION] ~ ~ ~ entitydata @e[type=arrow,r=5,c=1] {CustomName:toBeReflected}

#Summon a FLING__DIRECTION-going arrow if there is a torchMain armor stand OPPOSITE_TEST_DIRECTION of this arrow (which we tested for above)
execute @s[name=toBeReflected] ~ ~ ~ summon minecraft:arrow ~ ~ ~ {M_O_T_I_O_N_T_A_G,pickup:2b}


#Kill this arrow if it has been marked "toBeReflected" by a torchMain armor stand because we are done with it
kill @s[name=toBeReflected]