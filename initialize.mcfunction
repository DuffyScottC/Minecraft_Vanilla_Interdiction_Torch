#Should be run the first time we play on a world

scoreboard objectives add dropDiamond stat.drop.minecraft.diamond

say Thanks for downloading Artemis_Fowl_2nd's Vanilla Interdiction Torch mod!
say If you need the download link again, here it is:
say placeholder_for_download_link
say This Vanilla function group allows you to and use Interdiction Torches in ANY vanilla world (v1.12 and above)! No mods required!
say - Create torches by tossing diamonds into a block of water surrounded by 8 obsidian blocks
say - Place the Interdiction Torch on the the same way you would place a normal torch and watch as you gain a 6-block radius of protection from hostile mobs, arrows, and fireballs!
say Please post any glitches, errors, or suggestions you find on the forums so that I can fix it ASAP!

#tellraw @a ["",{"text":"Thanks for downloading "},{"text":"Artemis_Fowl_2nd's","color":"dark_purple"},{"text":" Vanilla Interdiction Torch","color":"aqua","bold":true},{"text":" mod!\nIf you need the download link again, here it is:\n","color":"none","bold":false},{"text":"placeholder_for_download_link","color":"blue","underlined":true,"clickEvent":{"action":"open_url","value":"download_link_url"}},{"text":"\nThis Vanilla function group allows you to and use Interdiction Torches in ANY vanilla world (v1.12 and above)! No mods required!","color":"none","underlined":false},{"text":"- Create torches by tossing diamonds into a block of water surrounded by 8 obsidian blocks","color":"none"},{"text":"- Place the Interdiction Torch on the the same way you would place a normal torch and watch as you gain a 6-block radius of protection from hostile mobs, arrows, and fireballs!\nPlease post any glitches, errors, or suggestions you find on the forums so that I can fix it ASAP!","color":"none"}]

#Import this to https://www.minecraftjson.com/ to edit the initial message
#{"command":"/tellraw @p %s","jobject":[{"text":"Thanks for downloading "},{"text":"Artemis_Fowl_2nd's","color":"dark_purple"},{"text":" Vanilla Interdiction Torch","color":"aqua","bold":true},{"text":" mod!\\nIf you need the download link again, here it is:\\n"},{"text":"placeholder_for_download_link","color":"blue","underlined":true,"clickEvent":{"action":"open_url","value":"download_link_url"}},{"text":"\\nThis Vanilla function group allows you to and use Interdiction Torches in ANY vanilla world (v1.12 and above)! No mods required!"},{"text":"- Create torches by tossing diamonds into a block of water surrounded by 8 obsidian blocks"},{"text":"- Place the Interdiction Torch on the the same way you would place a normal torch and watch as you gain a 6-block radius of protection from hostile mobs, arrows, and fireballs!\\nPlease post any glitches, errors, or suggestions you find on the forums so that I can fix it ASAP!"}],"jtemplate":"tellraw"}