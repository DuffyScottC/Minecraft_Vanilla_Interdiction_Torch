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

#If it has NOBLOCKDOWN; but not NOBLOCKWEST, we can place a block West
execute @s[tag=NOBLOCKDOWN] ~ ~ ~ execute @s[tag=!NOBLOCKWEST] ~ ~ ~ setblock ~ ~ ~ minecraft:torch 1

#If it has NOBLOCKDOWN, and NOBLOCKWEST; but not NOBLOCKEAST, we can place a block West
execute @s[tag=NOBLOCKDOWN] ~ ~ ~ execute @s[tag=NOBLOCKWEST] ~ ~ ~ execute @s[tag=!NOBLOCKEAST] ~ ~ ~ setblock ~ ~ ~ minecraft:torch 2

#If it has NOBLOCKDOWN, NOBLOCKWEST, and NOBLOCKEAST; but not NOBLOCKNORTH, we can place a block West
execute @s[tag=NOBLOCKDOWN] ~ ~ ~ execute @s[tag=NOBLOCKWEST] ~ ~ ~ execute @s[tag=NOBLOCKEAST] ~ ~ ~ execute @s[tag=!NOBLOCKNORTH] ~ ~ ~ setblock ~ ~ ~ minecraft:torch 3

#If it has NOBLOCKDOWN, NOBLOCKWEST, NOBLOCKEAST, and NOBLOCKNORTH; but not NOBLOCKSOUTH, we can place a block West
execute @s[tag=NOBLOCKDOWN] ~ ~ ~ execute @s[tag=NOBLOCKWEST] ~ ~ ~ execute @s[tag=NOBLOCKEAST] ~ ~ ~ execute @s[tag=NOBLOCKNORTH] ~ ~ ~ execute @s[tag=!NOBLOCKSOUTH] ~ ~ ~ setblock ~ ~ ~ minecraft:torch 4

#If it has NOBLOCKDOWN, NOBLOCKWEST, NOBLOCKEAST, NOBLOCKNORTH, and NOBLOCKSOUTH, then we should not place any torch, and we should not play any sound
execute @s[tag=NOBLOCKDOWN] ~ ~ ~ execute @s[tag=NOBLOCKWEST] ~ ~ ~ execute @s[tag=NOBLOCKEAST] ~ ~ ~ execute @s[tag=NOBLOCKNORTH] ~ ~ ~ execute @s[tag=NOBLOCKSOUTH] ~ ~ ~ scoreboard players tag @s add NOBLOCKSANYWHERE

#Play the sound of wood being placed (which is the same as a torch being placed)
execute @s[tag=!NOBLOCKSANYWHERE] ~ ~ ~ playsound minecraft:block.wood.place block @a[r=12] ~ ~ ~