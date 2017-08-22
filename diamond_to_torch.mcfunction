#If there is only 1 diamond in the stack, then we can apply the COUNTOFONE tag to the diamond
scoreboard players tag @e[name=item.item.diamond,tag=!COUNTOFONE] add COUNTOFONE {Item:{id:"minecraft:diamond",Count:1b,Damage:0s}}
#There may be future issues with the following case: a diamond that has not been dropped by a player (was summoned or appeared from mining) is on the ground, and the player then drops a diamond on the ground (not in the water+obsidian thing). The diamond the player dropped will have the COUNTOFONE tag, but no other tag.

#if it has COUNTOFONE tag, then it only has 1 diamond in the stack
execute @e[name=item.item.diamond,tag=COUNTOFONE] ~ ~ ~ detect ~ ~ ~-1 minecraft:obsidian 0 scoreboard players tag @s add N

#if it has the N tag, then there is an obsidian block to the North
execute @e[name=item.item.diamond,tag=N] ~ ~ ~ detect ~1 ~ ~-1 minecraft:obsidian 0 scoreboard players tag @s add NE

#if it has the NE tag, then there is an obsidian block to the NorthEast
execute @e[name=item.item.diamond,tag=NE] ~ ~ ~ detect ~1 ~ ~ minecraft:obsidian 0 scoreboard players tag @s add E

#if it has the E tag, then there is an obsidian block to the East
execute @e[name=item.item.diamond,tag=E] ~ ~ ~ detect ~1 ~ ~1 minecraft:obsidian 0 scoreboard players tag @s add SE

#if it has the SE tag, then there is an obsidian block to the SouthEast
execute @e[name=item.item.diamond,tag=SE] ~ ~ ~ detect ~ ~ ~1 minecraft:obsidian 0 scoreboard players tag @s add S

#if it has the S tag, then there is an obsidian block to the South
execute @e[name=item.item.diamond,tag=S] ~ ~ ~ detect ~-1 ~ ~1 minecraft:obsidian 0 scoreboard players tag @s add SW

#if it has the SW tag, then there is an obsidian block to the SouthWest
execute @e[name=item.item.diamond,tag=SW] ~ ~ ~ detect ~-1 ~ ~ minecraft:obsidian 0 scoreboard players tag @s add W

#if it has the W tag, then there is an obsidian block to the West
execute @e[name=item.item.diamond,tag=W] ~ ~ ~ detect ~-1 ~ ~-1 minecraft:obsidian 0 scoreboard players tag @s add NW

#if it has the NW tag, then there is an obsidian block to the NorthWest
execute @e[name=item.item.diamond,tag=NW] ~ ~ ~ detect ~ ~ ~ minecraft:water 0 scoreboard players tag @s add WATER

#if we get to this point, then all 8 obsidian blocks are in place AND the water is in place, so we can give the Interdiction Torch armor stand to the player who tossed the item
execute @e[name=item.item.diamond,tag=WATER] ~ ~ ~ give @p minecraft:armor_stand 1 0 {HideFlags:1,ench:[{id:34,lvl:1}],display:{Name:"Interdiction Torch",Lore:["Repels hostile mobs,","arrows, and ghast","fireballs in a 5 block","radius."]},EntityTag:{Invisible:1b,Invulnerable:1b,NoGravity:1b,Marker:1b,CustomName:"torchMainNew"}}

#Label any diamonds that have landed on the gound. If a diamond is on the ground then it should reset "the player who threw it"'s dropDiamond score
scoreboard players tag @e[name=item.item.diamond] add DIAONGROUND {OnGround:1b}

#If a diamond has landed on the ground (and the diamond has not already been tagged DIAINVALID) then the player who dropped this diamond should no longer have a dropDiamond score of 1 or more (the diamond would have given the armor stand by now)
execute @e[name=item.item.diamond,tag=DIAONGROUND] ~ ~ ~ execute @s[tag=!DIAINVALID] ~ ~ ~ scoreboard players reset @a[score_dropDiamond_min=1] dropDiamond

#If a diamond has the WATER tag at this point, then it has successfully given a player an Interdiction Torch armor stand and we should reset that player's dropDiamond score (if the diamond has the WATER tag, it definitly does not have the DIAINVALID tag because)
execute @e[name=item.item.diamond,tag=WATER] ~ ~ ~ scoreboard players reset @a[score_dropDiamond_min=1] dropDiamond

#Kill any diamonds that have the tag "WATER" at this point, because they have already given their Interdiction Torch armor stand
kill @e[name=item.item.diamond,tag=WATER]

#if any diamond does not have the tag "WATER" at this point, then the only tag it should have is DIAINVALID (we remove all other tags at this point)
entitydata @e[name=item.item.diamond,tag=DIAONGROUND] {Tags:["DIAINVALID"]}