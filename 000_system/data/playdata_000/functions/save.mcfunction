#> playdata_000:save
# @within
#   function playdata_000:**

data remove storage temp_000:playdata player
data remove storage temp_000:playdata game
data remove storage temp_000:playdata world
function playdata_000:remove

#player
execute as @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000] run function player_000:data/save
data remove storage temp_000:playdata player.raw[].SkullOwner
data remove storage temp_000:playdata player.raw[].display
#game
function #minecraft:handler/000_save_playdata
#world
execute store result storage temp_000:playdata world.version int 1 run scoreboard players get #MapVersion id_000
execute store result storage temp_000:playdata world.minecraft.int int 1 run scoreboard players get #DataVersion id_000
data modify storage temp_000:playdata world.minecraft.string set from storage system_000:storage version.minecraft
execute store result storage temp_000:playdata world.used_id int 1 run scoreboard players get #SYSTEM id_000
execute store result storage temp_000:playdata world.playdata int 1 run scoreboard players get #playdata id_000

data modify storage playdata:storage {} merge from storage temp_000:playdata {}