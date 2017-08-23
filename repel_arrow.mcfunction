#scoreboard players tag @e[name=torchMain,r=5] add TORCHARROW

#execute @e[name=torchMain,tag=TORCHARROW] ~ ~ ~ entitydata @e[type=arrow,r=5] {CustomName:toBeReflected}

#execute @s[name=toBeReflected] ~ ~ ~ summon minecraft:arrow ~ ~ ~ {Motion:[0.0,0.2,-0.6],pickup:2b}

#scoreboard players tag @e[name=torchMain,r=5] remove TORCHARROW

#kill @s[name=toBeReflected]

execute @e[r=5,c=1,name=torchMain,type=armor_stand] ~ ~ ~ entitydata @e[type=arrow,r=5,c=1] {CustomName:toBeReflected}

execute @s[name=toBeReflected] ~ ~ ~ summon minecraft:arrow ~ ~ ~ {Motion:[0.0,0.2,-0.6],pickup:2b}

kill @s[name=toBeReflected]