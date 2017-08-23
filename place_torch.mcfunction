#This is run on a newly placed interdiction torch armor stand

#Rename the entity appropriately (this makes it so that the command only runs once)
entitydata @s {CustomName:"torchMain"}



#Play the sound of wood being placed (which is the same as a torch being placed)
playsound minecraft:block.wood.place block @a[r=12] ~ ~ ~