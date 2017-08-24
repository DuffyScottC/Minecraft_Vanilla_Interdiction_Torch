#These are all the commands that all torchMains should be running. I have put them into the same place to lower the number of searches through the entities the game has to do.

function repel_torch:repel_mobs
execute @e[type=arrow,r=8] ~ ~ ~ function repel_torch:repel_arrows
function repel_torch:repel_fireball
function repel_torch:repel_blaze_fireball
function repel_torch:particles

#Allow the user to break the torch they can see in order to get back the interdiction torch and place it somewhere else
execute @s ~ ~ ~ detect ~ ~ ~ minecraft:air 0 function repel_torch:break_torch