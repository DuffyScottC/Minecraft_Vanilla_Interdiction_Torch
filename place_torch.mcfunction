#This is run on a newly placed interdiction torch armor stand

#Rename the entity appropriately (this makes it so that the command only runs once)
entitydata @s {CustomName:"torchMain"}

#Down 0
execute @s ~ ~ ~ detect minecraft:air 0 ~ ~-1 ~ scoreboard players tag @s add TORAIRD

#West 1 - If there is no block below, check if there is to the West
execute @s[tag=TORAIRD] ~ ~ ~ detect ~-1 ~ ~ minecraft:air 0 scoreboard players tag @s add TORAIRW

#East 2 - If there is no block to the West, check if there is to the East
execute @s[tag=TORAIRW] ~ ~ ~ detect ~1 ~ ~ minecraft:air 0 scoreboard players tag @s add TORAIRE

#North 3 - If there is no block to the East, check if there is to the North
execute @s[tag=TORAIRE] ~ ~ ~ detect ~ ~ ~-1 minecraft:air 0 scoreboard players tag @s add TORAIRN

#South 4 - If there is no block to the North, check if there is to the South
execute @s[tag=TORAIRN] ~ ~ ~ detect 0 ~ ~ ~1 minecraft:air scoreboard players tag @s add TORAIRS



#Place Down  (if there is not an air block below)
execute @s[tag=!TORAIRD] ~ ~ ~ execute @s[tag=!TORPLACEDALREADY] ~ ~ ~ setblock ~ ~ ~ minecraft:torch 0

#Mark the armor stand if there is already a torch
execute @s ~ ~ ~ detect ~ ~ ~ minecraft torch 0 scoreboard objectives tag @s add TORPLACEDALREADY

#Place West (if there is not an air block West and if a torch has not already been placed)
execute @s[tag=!TORAIRW] ~ ~ ~ execute @s[tag=!TORPLACEDALREADY] ~ ~ ~ setblock ~ ~ ~ minecraft:torch 1

#Mark the armor stand if there is already a torch
execute @s ~ ~ ~ detect ~ ~ ~ minecraft torch 1 scoreboard objectives tag @s add TORPLACEDALREADY

#Place East (if there is not an air block East and if a torch has not already been placed)
execute @s[tag=!TORAIRE] ~ ~ ~ execute @s[tag=!TORPLACEDALREADY] ~ ~ ~ setblock ~ ~ ~ minecraft:torch 2

#Mark the armor stand if there is already a torch
execute @s ~ ~ ~ detect ~ ~ ~ minecraft torch 2 scoreboard objectives tag @s add TORPLACEDALREADY

#Place North (if there is not an air block North and if a torch has not already been placed)
execute @s[tag=!TORAIRN] ~ ~ ~ execute @s[tag=!TORPLACEDALREADY] ~ ~ ~ setblock ~ ~ ~ minecraft:torch 3

#Mark the armor stand if there is already a torch
execute @s ~ ~ ~ detect ~ ~ ~ minecraft torch 3 scoreboard objectives tag @s add TORPLACEDALREADY

#Place South (if there is not an air block South and if a torch has not already been placed)
execute @s[tag=!TORAIR] ~ ~ ~ execute @s[tag=!TORPLACEDALREADY] ~ ~ ~ setblock ~ ~ ~ minecraft:torch 4

#Play the sound of wood being placed (which is the same as a torch being placed)
playsound minecraft:block.wood.place block @a[r=12] ~ ~ ~