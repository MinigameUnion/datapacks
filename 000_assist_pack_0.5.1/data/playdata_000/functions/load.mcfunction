#> playdata_000:load
# @within
#   function playdata_000:**

#全プレイヤーのplaying_000が0
#execute unless entity @e[x=0.5,y=1.0,z=0.5,distance=..0,tag=storage_000,nbt={Item:{tag:{000:{status:1b}}}}]
#playdata値が異なる
#

data modify storage temp_000:loading {} merge from storage playdata:storage {}
function playdata_000:remove
execute store result score #SYSTEM id_000 run data get storage temp_000:loading world.used_id
execute store result score #playdata id_000 run data get storage temp_000:loading world.playdata

execute as @a at @s run function player_000:data/check

function #minecraft:handler/000_load_playdata