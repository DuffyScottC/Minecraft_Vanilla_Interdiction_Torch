#Should be run the first time we play on a world

scoreboard objectives add dropDiamond stat.drop.minecraft.diamond

#{"command":"/tellraw @p %s","jobject":[{"text":"Thanks for downloading "},{"text":"Artemis_Fowl_2nd's","color":"dark_purple"},{"text":" Vanilla Interdiction Torch","color":"aqua","bold":true},{"text":" mod!\\nIf you need the download link again, here it is:\\n"},{"text":"placeholder_for_download_link","color":"blue","underlined":true,"clickEvent":{"action":"open_url","value":"download_link_url"}},{"text":"\\nThis Vanilla function group allows you to and use Interdiction Torches in ANY vanilla world (v1.12 and above)! No mods required!"},{"text":"- Create torches by tossing diamonds into a block of water surrounded by 8 obsidian blocks"},{"text":"- Place the Interdiction Torch on the the same way you would place any torch"}],"jtemplate":"tellraw"}