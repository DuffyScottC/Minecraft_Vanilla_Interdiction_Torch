#This is run on a newly placed interdiction torch armor stand

#Rename the entity appropriately (this makes it so that the command only runs once)
entitydata @s {CustomName:"torchMain"}

execute @s ~ ~ ~ detect ~ ~-1 ~ minecraft:air 0 scoreboard players tag @s add NOBLOCKDOWN

#West
execute @s ~ ~ ~ detect ~-1 ~ ~ minecraft:air 0 scoreboard players tag @s add NOBLOCKWEST

#East
execute @s ~ ~ ~ detect ~1 ~ ~ minecraft:air 0 scoreboard players tag @s add NOBLOCKEAST

#North
execute @s ~ ~ ~ detect ~ ~ ~-1 minecraft:air 0 scoreboard players tag @s add NOBLOCKNORTH

#South
execute @s ~ ~ ~ detect ~ ~ ~1 minecraft:air 0 scoreboard players tag @s add NOBLOCKSOUTH

execute @s[tag=NOBLOCKDOWN] ~ ~ ~ say has NOBLOCKDOWN tag
execute @s[tag=NOBLOCKWEST] ~ ~ ~ say has NOBLOCKWEST tag
execute @s[tag=NOBLOCKEAST] ~ ~ ~ say has NOBLOCKEAST tag
execute @s[tag=NOBLOCKNORTH] ~ ~ ~ say has NOBLOCKNORTH tag
execute @s[tag=NOBLOCKSOUTH] ~ ~ ~ say has NOBLOCKSOUTH tag

#If it does not have NOBLOCKDOWN, we can place a block Down
execute @s[tag=!NOBLOCKDOWN] ~ ~ ~ setblock ~ ~ ~ minecraft:torch 0
scoreboard players tag @s[tag=!NOBLOCKDOWN] add TORCHPLACED

#If it does not have TORCHPLACED then we still need to place a torch
#If it does not have NOBLOCKWEST, we can place a block West
execute @s[tag=!TORCHPLACED] ~ ~ ~ execute @s[tag=!NOBLOCKWEST]

#Play the sound of wood being placed (which is the same as a torch being placed)
playsound minecraft:block.wood.place block @a[r=12] ~ ~ ~