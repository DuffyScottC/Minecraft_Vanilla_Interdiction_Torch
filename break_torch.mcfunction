#I want the user to be able to break the torch if they want and pick it back up, so the armor stand torchMain needs to constantly check for air at ~ ~ ~ and dismantle itself if it finds air.
#The trick is that it will kill the "torch" armor stands of other torches if they overlap its radius, so we need to kill all "torch" armor stands, then re-summon the "torch" armor stands of the interdiction torches that are still standing.
#So, if we get to this point, all these commands will be run on an armor stand with no torch at its ~ ~ ~

say Broken torch

#Rename the torch armor stand that is to be broken
entitydata @s {CustomName:"torchMainOld"}

#Kill all the "torch" armor stands (the spheres)
kill @e[name=torch,type=armor_stand]

#summon all the "torch" armor stands around the other "torchMain"s
execute @e[name=torchMain,type=armor_stand] ~ ~ ~ function repel_torch:summon_sphere

#Change the nearest torch item into an interdicion torch armor stand item
entitydata @e[type=item,name=item.tile.torch,c=1] {Item:{id:"minecraft:armor_stand",Count:1b,Damage:0s,tag:{HideFlags:1,ench:[{id:34,lvl:1}],display:{Name:"Interdiction Torch",Lore:["Repels hostile mobs,","arrows, and ghast","fireballs in a 5 block","radius."]},EntityTag:{Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,CustomName:"torchMainNew"}}}}

#Kill the old interdiction torch armor stand called "torchMainOld"
kill @s