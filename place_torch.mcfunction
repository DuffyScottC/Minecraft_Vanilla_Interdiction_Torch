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

#If it does not have NOBLOCKDOWN, we can place a block Down
execute @s[tag=!NOBLOCKDOWN] ~ ~ ~ scoreboard players tag @s add TORCHDOWN
execute @s[tag=TORCHDOWN] ~ ~ ~ setblock ~ ~ ~ minecraft:torch 0

#If it has NOBLOCKDOWN; but not NOBLOCKWEST, we can place a block West
execute @s[tag=NOBLOCKDOWN] ~ ~ ~ execute @s[tag=!NOBLOCKWEST] ~ ~ ~ scoreboard players tag @s add TORCHWEST
execute @s[tag=TORCHWEST] ~ ~ ~ setblock ~ ~ ~ minecraft:torch 1

#If it has NOBLOCKDOWN, and NOBLOCKWEST; but not NOBLOCKEAST, we can place a block East
execute @s[tag=NOBLOCKDOWN] ~ ~ ~ execute @s[tag=NOBLOCKWEST] ~ ~ ~ execute @s[tag=!NOBLOCKEAST] ~ ~ ~ scoreboard players tag @s add TORCHEAST
execute @s[tag=TORCHEAST] ~ ~ ~ setblock ~ ~ ~ minecraft:torch 2

#If it has NOBLOCKDOWN, NOBLOCKWEST, and NOBLOCKEAST; but not NOBLOCKNORTH, we can place a block North
execute @s[tag=NOBLOCKDOWN] ~ ~ ~ execute @s[tag=NOBLOCKWEST] ~ ~ ~ execute @s[tag=NOBLOCKEAST] ~ ~ ~ execute @s[tag=!NOBLOCKNORTH] ~ ~ ~ scoreboard players tag @s add TORCHNORTH
execute @s[tag=TORCHNORTH] ~ ~ ~ setblock ~ ~ ~ minecraft:torch 3

#If it has NOBLOCKDOWN, NOBLOCKWEST, NOBLOCKEAST, and NOBLOCKNORTH; but not NOBLOCKSOUTH, we can place a block South
execute @s[tag=NOBLOCKDOWN] ~ ~ ~ execute @s[tag=NOBLOCKWEST] ~ ~ ~ execute @s[tag=NOBLOCKEAST] ~ ~ ~ execute @s[tag=NOBLOCKNORTH] ~ ~ ~ execute @s[tag=!NOBLOCKSOUTH] ~ ~ ~ scoreboard players tag @s add TORCHSOUTH
execute @s[tag=TORCHSOUTH] ~ ~ ~ setblock ~ ~ ~ minecraft:torch 4

#Play the sound of wood being placed (which is the same as a torch being placed)
playsound minecraft:block.wood.place block @a[r=12] ~ ~ ~

scoreboard players tag @s remove NOBLOCKDOWN
scoreboard players tag @s remove NOBLOCKWEST
scoreboard players tag @s remove NOBLOCKEAST
scoreboard players tag @s remove NOBLOCKNORTH
scoreboard players tag @s remove NOBLOCKSOUTH