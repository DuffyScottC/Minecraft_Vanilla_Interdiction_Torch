#teleport all hostile mobs to the nearest valid torch (invalid torches are inside a radius of 5 blocks of another torchMain)
execute @e[c=1,tag=RHOSTILE,r=5] ~ ~ ~ tp @s @e[c=1,name=torch,tag=!TORINVALID]

execute @e[r=6,name=torch,type=armor_stand] ~ ~ ~ detect ~ ~ ~ minecraft:air 0 scoreboard players tag @s remove TORINVALID

#Remove the TORINVALID tag from all armor stands in the radius of 6 blocks. This undoes the tagging of torchMains own armor stand torches by other torchMains.
scoreboard players tag @e[r=6,name=torch,type=armor_stand] remove TORINVALID

#Add the tag TORINVALID to all armor stands in the radius of 6
scoreboard players tag @e[r=6,name=torch,type=armor_stand] add TORINVALID

#Label all hostile mobs in a radius of 5 blocks with the RHOSTILE tag
scoreboard players tag @e[r=6,type=blaze] add RHOSTILE
#Chicken jockey?
scoreboard players tag @e[r=6,type=creeper] add RHOSTILE
scoreboard players tag @e[r=6,type=elder_guardian] add RHOSTILE
scoreboard players tag @e[r=6,type=endermite] add RHOSTILE
scoreboard players tag @e[r=6,type=evocation_illager] add RHOSTILE
scoreboard players tag @e[r=6,type=guardian] add RHOSTILE
scoreboard players tag @e[r=6,type=husk] add RHOSTILE
scoreboard players tag @e[r=6,type=silverfish] add RHOSTILE
scoreboard players tag @e[r=6,type=skeleton] add RHOSTILE
scoreboard players tag @e[r=6,type=stray] add RHOSTILE
scoreboard players tag @e[r=6,type=vindication_illager] add RHOSTILE
scoreboard players tag @e[r=6,type=vex] add RHOSTILE
scoreboard players tag @e[r=6,type=witch] add RHOSTILE
scoreboard players tag @e[r=6,type=wither_skeleton] add RHOSTILE
scoreboard players tag @e[r=6,type=zombie] add RHOSTILE
scoreboard players tag @e[r=6,type=zombie_villager] add RHOSTILE
scoreboard players tag @e[r=6,type=cave_spider] add RHOSTILE
scoreboard players tag @e[r=6,type=enderman] add RHOSTILE
scoreboard players tag @e[r=6,type=illusion_illager] add RHOSTILE
scoreboard players tag @e[r=6,type=] add RHOSTILE
scoreboard players tag @e[r=6,type=] add RHOSTILE
scoreboard players tag @e[r=6,type=] add RHOSTILE
scoreboard players tag @e[r=6,type=] add RHOSTILE
#shulker