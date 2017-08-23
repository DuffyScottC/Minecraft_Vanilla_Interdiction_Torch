#This is run on a newly placed interdiction torch armor stand

#Rename the entity appropriately
entitydata @s {CustomName:"torchMain"}

#place a torch on the block the armor stand is standing on
setblock ~ ~ ~ minecraft:torch

#Play the sound of wood being placed (which is the same as a torch being placed)
playsound minecraft:block.wood.place block @a[r=12] ~ ~ ~